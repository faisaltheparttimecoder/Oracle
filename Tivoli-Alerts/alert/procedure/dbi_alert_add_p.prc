CREATE OR REPLACE PROCEDURE DBIMGR.dbi_alert_add_p
/******************************************************************************
   NAME:       DBI_ALERT_add_P
   PURPOSE:    To add/modify the new/exsiting alerting system, based on
                parameter described for it.
   PARAMETER:  It doesnt accept any parameters.

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        6/10/2009    Faisal Ali            1. Created this procedure code.
              6/10/2009    Sudhakar Kalra        2. Alteration to the code to
                                                    fix the bug.

   Bug:

   1. The Operator Do_not_check doesnt work , with any operator of object_type
       other than OBJECT_TYPE_TABLESPACE. And SR 7553112.993  is created and working on
       it.- This is Fixed

   NOTES:

      Object Name:     DBI_ALERT_add_P
      Sysdate:         6/10/2009
      Date and Time:   6/10/2009, 9:39:48 AM
      Username:        DBIMGR
      Package:         DBMS_SERVER_ALERT

******************************************************************************/
AS
   occurance_gap   NUMBER := 1;
BEGIN
-- Collecting all the information for the operator parameters using a loop to add/modify the new/exsiting alerts.
   FOR j IN (SELECT b.metric_id a1, a.metric_warn_operator a2,
                    a.metric_warn_threshold a3, a.metric_crtcl_operator a4,
                    a.metric_crtcl_threshold a5,
                    a.metric_obsrvtn_threshold a6, a.metric_objects a7,
                    b.metric_object_type_val a8 , a.metric_instance_name a9
               FROM dbimgr.dbi_metric_threshold a, dbimgr.dbi_metric b
              WHERE UPPER (a.metric_flag) = 'Y'
                    AND a.metric_val = b.metric_val)
   LOOP
      -- Since the operator_do_not_check works only with object_type of object_type_tablespace the below if condition does these checks..
      IF j.a2 = 7 AND j.a8 = 5
      THEN
         j.a3 := 0;
      END IF;

      IF j.a4 = 7 AND j.a8 = 5
      THEN
         j.a5 := 0;
      END IF;

      -- For the rest of the object_type the if condition does the job for disabling any operator..
      IF j.a2 = 7 AND j.a8 !=5
      THEN
         j.a2 := NULL;
         j.a3 := NULL;
      END IF;

      IF j.a4 = 7 AND j.a8 !=5
      THEN
         j.a4 := NULL;
         j.a5 := NULL;
      END IF;

      -- The below section enables/modify all the alerts based on the value that has been retrived from the above for loop.
      BEGIN
         DBMS_SERVER_ALERT.set_threshold
                                   (metrics_id                   => j.a1,
                                    warning_operator             => j.a2,
                                    warning_value                => j.a3,
                                    critical_operator            => j.a4,
                                    critical_value               => j.a5,
                                    observation_period           => j.a6,
                                    consecutive_occurrences      => occurance_gap,
                                    instance_name                => j.a9,
                                    object_type                  => j.a8,
                                    object_name                  => j.a7
                                   );
      -- The exception is to make sure that if case these is a wrong parameter passed , it doesnt effect the other parameters described in the table.
      EXCEPTION
         WHEN OTHERS
         THEN
            NULL;
      END;
   END LOOP;
   
   -- The below code adds the tablespace name on the threshold table with the defualt value in case some one adds a new tablespace
      FOR i IN
         (SELECT DISTINCT    'insert into DBIMGR.DBI_METRIC_THRESHOLD values (145,4,90,4,97,30,'
                          || ''''
                          || a.tablespace_name
                          || ''','
                          || '''Y'','
                          || ''''
                          || (SELECT instance_name
                                FROM v$instance)
                          || ''')' tablespace_missing
                     FROM dba_tablespaces a
                    WHERE a.CONTENTS NOT IN ('TEMPORARY', 'UNDO')
          MINUS
          SELECT DISTINCT    'insert into DBIMGR.DBI_METRIC_THRESHOLD values (145,4,90,4,97,30,'
                          || ''''
                          || b.metric_objects
                          || ''','
                          || '''Y'','
                          || ''''
                          || (SELECT instance_name
                                FROM v$instance)
                          || ''')' tablespace_missing
                     FROM dbimgr.dbi_metric_threshold b)
      LOOP
         EXECUTE IMMEDIATE (i.tablespace_missing);
   
         COMMIT;
   END LOOP;
   
END;
/