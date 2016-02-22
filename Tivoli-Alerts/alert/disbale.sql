--- To disable the alert completely in the database run the below script after logging into the database.



update dbimgr.dbi_metric_threshold set metric_flag='N';

commit;

exec dbimgr.dbi_alert_remove_p;

conn dbimgr/kl#89$

exec DBMS_SCHEDULER.drop_job (job_name => 'ALERT_JOB_SCHEDULE');