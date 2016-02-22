/* Formatted on 2009/07/01 11:19 (Formatter Plus v4.8.8) */
SET DEFINE OFF;
INSERT INTO dbimgr.dbi_programs
            (program_name, description,
             VERSION, install_date,
             active_flag
            )
     VALUES ('dbimgr.dbi_alert_report_bkup_p', 'Check for Full Backup ',
             '1.0', TO_DATE ('06/12/2009 12:37:32', 'MM/DD/YYYY HH24:MI:SS'),
             'Y'
            );
COMMIT ;



SET DEFINE OFF;
INSERT INTO dbimgr.dbi_alert_exception
            (alert_name, database_name, instance_name,
             range_exception_start_ts, range_exception_end_ts,
             recurring_exception_weekday, recurring_exception_start,
             recurring_exception_end, server_name
            )
     VALUES ('ORC2086', (SELECT NAME
                           FROM v$database), (SELECT instance_name
                                                FROM v$instance),
             NULL, NULL,
             NULL, NULL,
             NULL, (SELECT HOST_NAME FROM v$instance)
            );

COMMIT ;



SET DEFINE OFF;
INSERT INTO dbimgr.dbi_alert_configuration
            (alert_name, database_name, instance_name,
             alert_type, alert_severity, active_f, tivoli_action,
             alert_description, server_name
            )
     VALUES ('ORC2086', (SELECT NAME
                           FROM v$database), (SELECT instance_name
                                                FROM v$instance),
             'ORC2086', 4, 'Y', 'T',
             '- Full Backup Alert -', (SELECT host_name FROM v$instance)
            );
COMMIT ;
