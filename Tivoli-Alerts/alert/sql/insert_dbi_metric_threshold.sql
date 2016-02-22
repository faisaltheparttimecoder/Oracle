SET heading off
SET pages 9999
SET linesize 200
SET lines 120
SET feedback off

SPOOL /opt/oracle/tivoli/alert/tmp/insert_dbi_metric_threshold.log


SELECT    'insert into DBIMGR.DBI_METRIC_THRESHOLD values (145,4,90,4,97,30,'
       || ''''
       || TABLESPACE_NAME
       || ''','
       || '''Y'','
       ||''''
       || (select instance_name from v$instance)
       ||''');'
  FROM dba_tablespaces
  WHERE CONTENTS NOT IN ('TEMPORARY','UNDO');

  SELECT    'exec DBMS_SERVER_ALERT.SET_THRESHOLD(9000,NULL,NULL,NULL,NULL,1,1,'
       || ''''
       || (select instance_name from v$instance)
       || ''','
       || '5,'
       ||''''
       || tablespace_name
       ||''');'
  FROM dba_tablespaces
  WHERE CONTENTS  IN ('TEMPORARY','UNDO');


SPOOL off

@/opt/oracle/tivoli/alert/tmp/insert_dbi_metric_threshold.log

SET heading on
SET feedback on
