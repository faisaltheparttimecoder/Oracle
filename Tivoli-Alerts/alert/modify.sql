-- To modify the alert thresholds using the package , read the document Oracle Alerts Metrics.doc (section 3.4.2) on how to do about it.


-- To modify/schedule timing for the alert to new time use the below script , change the repeat interval value to a new value after dropping the job.

conn dbimgr/kl#89$


exec DBMS_SCHEDULER.drop_job (job_name => 'ALERT_JOB_SCHEDULE');


begin
  dbms_scheduler.create_job(
      job_name => 'ALERT_JOB_SCHEDULE'
     ,job_type => 'PLSQL_BLOCK'
     ,job_action => 'begin dbimgr.dbi_alert_report_bkup_p(); end; '
     ,start_date => SYSDATE
     ,repeat_interval => '<NEW_TIMING>'
     ,enabled => TRUE
     ,comments => 'DBMS_SERVER_ALERT Alert job schedule.');
end;
/


