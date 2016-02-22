
conn dbimgr/kl#89$


begin
  dbms_scheduler.create_job(
      job_name => 'BKUP_ALERT_JOB_SCHEDULE'
     ,job_type => 'PLSQL_BLOCK'
     ,job_action => 'begin dbimgr.dbi_alert_report_bkup_p(8); end; '
     ,start_date => SYSDATE
     ,repeat_interval => 'FREQ=DAILY'
     ,enabled => TRUE
     ,comments => 'Full Backup Alert job schedule.');
end;
/
