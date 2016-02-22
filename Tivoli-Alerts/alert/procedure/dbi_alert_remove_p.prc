
CREATE OR REPLACE PROCEDURE DBIMGR.dbi_alert_remove_p
/******************************************************************************
   NAME:       dbi_alert_remove_p
   PURPOSE:    To remove the exsiting alerting system, based on
                flag described for it.
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
       it.- This is fixed

   NOTES:

      Object Name:     dbi_alert_remove_p
      Sysdate:         6/10/2009
      Date and Time:   6/10/2009, 9:39:48 AM
      Username:        DBIMGR
      Package:         DBMS_SERVER_ALERT

******************************************************************************/
AS
   warning_threshold    NUMBER := 0;
   -- the value need to be set to zero when the operator_do_noty_check is used.
   critical_threshold   NUMBER := 0;
   -- the value need to be set to zero when the operator_do_noty_check is used.
   observation_period   NUMBER := 0;              -- the value is in minutes.
   occurance_gap        NUMBER := 0;
BEGIN
-- Collecting all the information for the operator parameters using a loop to remove the exsiting alerts.
   FOR j IN (SELECT b.metric_id a1, a.metric_warn_operator a2,
                    a.metric_warn_threshold a3, a.metric_crtcl_operator a4,
                    a.metric_crtcl_threshold a5,
                    a.metric_obsrvtn_threshold a6, a.metric_objects a7,
                    b.metric_object_type_val a8, a.metric_instance_name a9
               FROM dbimgr.dbi_metric_threshold a, dbimgr.dbi_metric b
              WHERE UPPER (a.metric_flag) = 'N'
                    AND a.metric_val = b.metric_val)
   LOOP
      -- Since the operator_do_not_check works only with object_type of object_type_tablespace the below if condition does these checks..
      IF (j.a8 = 5)
      THEN
         BEGIN
            -- The below section removes all the alerts based on the value that has been retrived from the above for loop.
            DBMS_SERVER_ALERT.set_threshold
               (metrics_id                   => j.a1,
                warning_operator             => DBMS_SERVER_ALERT.operator_do_not_check,
                warning_value                => warning_threshold,
                critical_operator            => DBMS_SERVER_ALERT.operator_do_not_check,
                critical_value               => critical_threshold,
                observation_period           => observation_period,
                consecutive_occurrences      => occurance_gap,
                instance_name                => j.a9,
                object_type                  => j.a8,
                object_name                  => j.a7
               );
         EXCEPTION
            WHEN OTHERS
            THEN
               NULL;
         END;
      ELSE
         BEGIN
            -- for the rest of the object_tye the below query disable the alerts..
            DBMS_SERVER_ALERT.set_threshold
                                   (metrics_id                   => j.a1,
                                    warning_operator             => NULL,
                                    warning_value                => NULL,
                                    critical_operator            => NULL,
                                    critical_value               => NULL,
                                    observation_period           => observation_period,
                                    consecutive_occurrences      => occurance_gap,
                                    instance_name                => j.a9,
                                    object_type                  => j.a8,
                                    object_name                  => j.a7
                                   );
         EXCEPTION
            WHEN OTHERS
            THEN
               NULL;
         END;
      END IF;
   END LOOP;
END;
/

