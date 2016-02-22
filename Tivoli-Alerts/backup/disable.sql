--- To disable the backup alert completely in the database run the below script after logging into the database.

conn dbimgr/kl#89$



exec DBMS_SCHEDULER.drop_job (job_name => 'BKUP_ALERT_JOB_SCHEDULE');