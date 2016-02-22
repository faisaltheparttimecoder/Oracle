-- To modify/schedule the backup alert to new time use the below script , change the value to a new value after dropping the job.

conn dbimgr/kl#89$


exec DBMS_SCHEDULER.drop_job (job_name => 'BKUP_ALERT_JOB_SCHEDULE');


begin
  dbms_scheduler.create_job(
      job_name => 'BKUP_ALERT_JOB_SCHEDULE'
     ,job_type => 'PLSQL_BLOCK'
     ,job_action => 'begin dbimgr.dbi_alert_report_bkup_p(<NEW_PROPOSED_#DAYS>); end; '
     ,start_date => SYSDATE
     ,repeat_interval => 'FREQ=DAILY'
     ,enabled => TRUE
     ,comments => 'Full Backup Alert job schedule.');
end;
/


