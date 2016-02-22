CREATE OR REPLACE PROCEDURE DBIMGR.dbi_alert_report_bkup_p (
   backup_period   NUMBER
/******************************************************************************
   NAME:       dbi_alert_report_bkup_p
   PURPOSE:    To report on the last backup that has not run since the number
                of days based on the parameter described above.
   PARAMETER:  It accept one parameters , which is the number of days for which
                the last backup ran.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/12/2009    Faisal Ali            1. Created this procedure code.
              6/12/2009    Sudhakar Kalra        2. Alteration to the code to
                                                    fix the bug.

   Bug:

   1. It supports only oracle of 10.2 or later , has the v$rman_status table
    isn't avaiable with any of the earlier release of oracle.

   NOTES:

      Object Name:     dbi_alert_report_bkup_p
      Sysdate:         6/12/2009
      Date and Time:   6/12/2009, 9:39:48 AM
      Username:        DBIMGR
      Package:         DBMS_SERVER_ALERT

******************************************************************************/
)
IS
   v_object_type          VARCHAR2 (10) := 'FLBKUP';
   v_days_not_run         NUMBER;
   -- This parameter stores the numbers of days since the backup was taken
   v_last_bkup_time       DATE;
   -- This parameter stores the date since the backup was taken
   v_alert_interval       NUMBER;
   v_alert_interval_act   NUMBER;
   v_status               NUMBER        := 0;
   v_object_name          VARCHAR2 (5)  := 'RMAN';
BEGIN
-- extracting the report on the last run backup from the v$ tables and assigning the values to the parameters.
   SELECT   TO_DATE (SYSDATE, 'DD-MM-YYYY')
          - TO_DATE (MAX (end_time), 'DD-MM-YYYY'),
          MAX (end_time)
     INTO v_days_not_run,
          v_last_bkup_time
     FROM v$rman_status
    WHERE status LIKE 'COMPLETED%' AND object_type IN ('DB INCR', 'DB FULL')
   HAVING   TO_DATE (SYSDATE, 'DD-MM-YYYY')
          - TO_DATE (MAX (end_time), 'DD-MM-YYYY') > backup_period;

-- Checking for the threshold for the given object type (based on v_days_not_run ) with severity 3  ... and it also make sure that only one tickets gets generated in a day..
   BEGIN
      SELECT SYSDATE - alert_time, alert_interval
        INTO v_alert_interval, v_alert_interval_act
        FROM dbi_alert_generation
       WHERE object_type = v_object_type
         AND object_name = v_object_name
         AND alert_threshold = v_days_not_run;

      IF v_alert_interval_act >= v_alert_interval
      THEN
         NULL;
      ELSE
         v_status :=
            dbi_alert_f ('dbimgr.dbi_alert_report_bkup_p',
                         'ORC2086',
                            ' Full backup not run for '
                         || v_days_not_run
                         || ' days - Full backup was last taken on '
                         || TO_CHAR (v_last_bkup_time,
                                     'DD-MM-YYYY HH24:MI:SS')
                         || ' - NOTIFY ORACLE DBA ONCALL.'
                        );

         UPDATE dbi_alert_generation
            SET alert_time = SYSDATE
          WHERE object_type = v_object_type
            AND object_name = v_object_name
            AND alert_threshold = v_days_not_run;
      END IF;
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         v_status :=
            dbi_alert_f ('dbimgr.dbi_alert_report_bkup_p',
                         'ORC2086',
                            ' Full backup not run for '
                         || v_days_not_run
                         || ' days - Full backup was last taken on '
                         || TO_CHAR (v_last_bkup_time,
                                     'DD-MM-YYYY HH24:MI:SS')
                         || ' - NOTIFY ORACLE DBA ONCALL.'
                        );

         INSERT INTO dbi_alert_generation
                     (object_type, object_name, alert_time, alert_interval,
                      alert_threshold
                     )
              VALUES (v_object_type, v_object_name, SYSDATE, 1,
                      v_days_not_run
                     );
   END;
-- exception to make sure that if there is no data found then return without any error.
EXCEPTION
   WHEN NO_DATA_FOUND
   THEN
      RETURN;
END;
/


