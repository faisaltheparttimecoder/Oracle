
conn dbimgr/kl#89$

begin
  dbms_scheduler.create_job(
      job_name => 'ALERT_JOB_SCHEDULE'
     ,job_type => 'PLSQL_BLOCK'
     ,job_action => 'begin dbimgr.dbi_alert_report_p(); end; '
     ,start_date => SYSDATE
     ,repeat_interval => 'SYSDATE+30/1440'
     ,enabled => TRUE
     ,comments => 'DBMS_SERVER_ALERT Alert job schedule.');
end;
/


