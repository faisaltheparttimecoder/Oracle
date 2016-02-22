CREATE OR REPLACE PROCEDURE DBIMGR.dbi_alert_report_p
/******************************************************************************
   NAME:       dbi_alert_report_p
   PURPOSE:    To generate the report on a exsiting alerting system, based on
                alert which has crossed the defined thresholds.
   PARAMETER:  It doesnt accept any parameters.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/10/2009    Faisal Ali            1. Created this procedure code.
              6/10/2009    Sudhakar Kalra        2. Alteration to the code to
                                                    fix the bug.

   Bug:

  

   NOTES:

      Object Name:     dbi_alert_report_p
      Sysdate:         6/10/2009
      Date and Time:   6/10/2009, 9:39:48 AM
      Username:        DBIMGR
      Package:         DBMS_SERVER_ALERT

******************************************************************************/
IS
   v_threshold_warning    NUMBER (10);
   v_threshold_critical   NUMBER (10);
   v_object_type          VARCHAR2 (100);
   v_alert_interval       NUMBER;
   v_alert_interval_act   NUMBER;
   v_status               NUMBER         := 0;
   v_add_flag             VARCHAR (1);
   v_remove_flag          VARCHAR (1);
BEGIN
   BEGIN
      -- Identifying for any new/modifed alerts described based on it call for the add procedure.
      SELECT DISTINCT metric_flag
                 INTO v_add_flag
                 FROM dbimgr.dbi_metric_threshold
                WHERE UPPER (metric_flag) = 'Y';
   EXCEPTION
      WHEN OTHERS
      THEN
         NULL;
   END;

   IF (v_add_flag = 'Y')
   THEN
      BEGIN
         dbimgr.dbi_alert_add_p ();
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
      END;
   END IF;

   BEGIN
      -- Identifying for any remove alerts described based on it call for the remove procedure.
      SELECT DISTINCT metric_flag
                 INTO v_remove_flag
                 FROM dbimgr.dbi_metric_threshold
                WHERE UPPER (metric_flag) = 'N';
   EXCEPTION
      WHEN OTHERS
      THEN
         NULL;
   END;

   IF (v_remove_flag = 'N')
   THEN
      BEGIN
         dbimgr.dbi_alert_remove_p ();
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
      END;
   END IF;

-- Start of the report code..
-- the below loop identifies the alerts that has been popped out for the described thresholds .
   FOR i IN
      (SELECT a.object_name,
              DECODE
                   (object_type,
                    'SYSTEM', reason_argument_1,
                    'EVENT_CLASS', reason_argument_1,
                    'FILE', reason_argument_1,
                    'SERVICE', reason_argument_1,
                    'SESSION', 'Blocked User Session Count',  --a.object_type,
                    'TABLESPACE', object_type
                     || ':'
                     || SUBSTR (b.reason_argument_2,
                                INSTR (b.reason_argument_2, ' ')
                               ),
                    object_type
                   ) metric_type,                             --c.metric_type,
              a.reason, a.metric_value, a.MESSAGE_TYPE, a.host_id,
              a.instance_name, b.reason_argument_1, b.reason_argument_2,
              DECODE (   object_type
                      || ':'
                      || SUBSTR (b.reason_argument_2,
                                 INSTR (b.reason_argument_2, ' ')
                                ),
                      'TABLESPACE: megabytes', 'Tablespace Bytes Space Usage',
                      'TABLESPACE: percent', 'Tablespace Space Usage'
                     ) comp
         FROM dba_outstanding_alerts a, SYS.wri$_alert_outstanding b
        WHERE a.sequence_id = b.sequence_id)
   LOOP
      v_object_type := i.metric_type;

      -- based on the alerts that has been crosses the defined thresholds , its corresponding warining/critical values are extracted.
      -- the below if loop is defined for those whose object_name has a value.
      IF (i.object_name NOT IN ('SYSTEM'))
      THEN
         BEGIN
            SELECT warning_value, critical_value
              INTO v_threshold_warning, v_threshold_critical
              FROM dba_thresholds dt
             WHERE DECODE (object_type, 'SESSION', 'SESSION', object_name) =
                      DECODE (i.metric_type,
                              'Blocked User Session Count', 'SESSION',
                              i.object_name
                             )
               AND metrics_name = DECODE (i.comp,
                                          NULL, i.metric_type,
                                          i.comp
                                         );
         EXCEPTION
            WHEN OTHERS
            THEN
               NULL;
         END;
      ELSE
         -- the below if loop is defined for those whose object_name doesnt have a value , i.e for all object_type_system parameters.
         BEGIN
            SELECT warning_value, critical_value
              INTO v_threshold_warning, v_threshold_critical
              FROM SYS.wri$_alert_outstanding wa, dba_thresholds dt
             WHERE reason_argument_1 = dt.metrics_name
               AND reason_argument_1 = i.reason_argument_1;
         EXCEPTION
            WHEN OTHERS
            THEN
               NULL;
         END;
      END IF;

      -- the below condition is to convert the value into megabytes.
      IF (i.comp LIKE 'Tablespace Bytes Space Usage')
      THEN
         v_threshold_critical := v_threshold_critical / 1024;
         v_threshold_warning := v_threshold_warning / 1024;
      END IF;

      -- Checking for the threshold for the given object type (based on v_threshold_critical which means severity 2 ) ... and it also make sure that only one tickets gets generated in a day..
      IF i.metric_value >= v_threshold_critical
      THEN
         BEGIN
            SELECT SYSDATE - alert_time, alert_interval
              INTO v_alert_interval, v_alert_interval_act
              FROM dbi_metric_alert_generation
             WHERE object_type = v_object_type
               AND object_name = i.object_name
               AND alert_threshold = v_threshold_critical;

            IF v_alert_interval_act >= v_alert_interval
            THEN
               NULL;
            ELSE
               v_status :=
                  dbi_alert_f ('dbimgr.dbi_alert_report_p',
                               'ORC2095',
                                  i.reason
                               || ' - HOST NAME/DB NAME is '
                               || i.host_id
                               || '/'
                               || i.instance_name
                               || ' - NOTIFY ORACLE DBA ONCALL.'
                              );

               UPDATE dbi_metric_alert_generation
                  SET alert_time = SYSDATE
                WHERE object_type = v_object_type
                  AND object_name = i.object_name
                  AND alert_threshold = v_threshold_critical;
            END IF;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
               v_status :=
                  dbi_alert_f ('dbimgr.dbi_alert_report_p',
                               'ORC2095',
                                  i.reason
                               || ' - HOST NAME/DB NAME is '
                               || i.host_id
                               || '/'
                               || i.instance_name
                               || ' - NOTIFY ORACLE DBA ONCALL.'
                              );

               INSERT INTO dbi_metric_alert_generation
                           (object_type, object_name, alert_time,
                            alert_interval, alert_threshold
                           )
                    VALUES (v_object_type, i.object_name, SYSDATE,
                            1, v_threshold_critical
                           );                 -- 1 REFERS TO 1 DAYS = 24 HOURS
         END;
      -- Checking for the threshold for the given object type (based on v_threshold_warning which means severity 23) ... and it also make sure that only one tickets gets generated in a day..
      ELSIF i.metric_value >= v_threshold_warning
      THEN
         BEGIN
            SELECT SYSDATE - alert_time, alert_interval
              INTO v_alert_interval, v_alert_interval_act
              FROM dbi_metric_alert_generation
             WHERE object_type = v_object_type
               AND object_name = i.object_name
               AND alert_threshold = v_threshold_warning;

            IF v_alert_interval_act >= v_alert_interval
            THEN
               NULL;
            ELSE
               v_status :=
                  dbi_alert_f ('dbimgr.dbi_alert_report_p',
                               'ORC2090',
                                  i.reason
                               || ' - HOST NAME/DB NAME is '
                               || i.host_id
                               || '/'
                               || i.instance_name
                               || ' - NOTIFY ORACLE DBA ONCALL.'
                              );

               UPDATE dbi_metric_alert_generation
                  SET alert_time = SYSDATE
                WHERE object_type = v_object_type
                  AND object_name = i.object_name
                  AND alert_threshold = v_threshold_warning;
            END IF;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
               v_status :=
                  dbi_alert_f ('dbimgr.dbi_alert_report_p',
                               'ORC2090',
                                  i.reason
                               || ' - HOST NAME/DB NAME is '
                               || i.host_id
                               || '/'
                               || i.instance_name
                               || ' - NOTIFY ORACLE DBA ONCALL.'
                              );

               INSERT INTO dbi_metric_alert_generation
                           (object_type, object_name, alert_time,
                            alert_interval, alert_threshold
                           )
                    VALUES (v_object_type, i.object_name, SYSDATE,
                            1, v_threshold_warning
                           );                 -- 1 REFERS TO 1 DAYS = 24 HOURS
         END;
      END IF;
   END LOOP;
END;
/


