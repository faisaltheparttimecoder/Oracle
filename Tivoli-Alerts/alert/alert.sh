#!/bin/ksh
#----------------------------------------------------------#
#
#   Author: Faisal.
#   Purpose: To install the alert framework.
#   Mod Hist:
#----------------------------------------------------------#
#if [ $# -ne 1 ]
#then
#   echo "\nUsage:  $0 <ORACLE_SID> \n"
#   exit 1
#fi


cat /opt/oracle/tivoli/alert/databaselist.log | grep -v "^#" | grep -v  "^$" | while read line
do
i=`echo $line | awk '{print $1}'`
ORACLE_SID=$i; export ORACLE_SID
ORATAB=/var/opt/oracle/oratab
export ORACLE_HOME=`cat ${ORATAB} | egrep -i ${ORACLE_SID} | awk -F: '{print $2}'`
PATH=${ORACLE_HOME}/bin:/usr/bin:/usr/sbin:/usr/ccs/bin:/usr/ucb:/usr/openwin/bin:/etc; export PATH
LD_LIBRARY_PATH=${ORACLE_HOME}/lib:/usr/lib:/usr/openwin/bin:/usr/dt/lib:/usr/ucblib; export LD_LIBRARY_PATH
TIVOLI_LOG=/opt/oracle/tivoli/alert/log/tivoli_${ORACLE_SID}_run.log


${ORACLE_HOME}/bin/sqlplus -s "/ as sysdba" <<EOF > $TIVOLI_LOG


prompt Creating tables for the alert..

@/opt/oracle/tivoli/alert/table/dbi_metric_objecttype.sql
@/opt/oracle/tivoli/alert/table/dbi_metric.sql
@/opt/oracle/tivoli/alert/table/dbi_metric_operator.sql
@/opt/oracle/tivoli/alert/table/dbi_metric_threshold.sql
@/opt/oracle/tivoli/alert/table/dbi_metric_alert_generation.sql


prompt Granting required access to DBIMGR schema for alerting ..

@/opt/oracle/tivoli/alert/grants/grant_dba_table_access.sql


prompt Populating data on alerts master table ..

@/opt/oracle/tivoli/alert/data/data_dbi_metric_object_type.sql
@/opt/oracle/tivoli/alert/data/data_dbi_metric.sql
@/opt/oracle/tivoli/alert/data/data_dbi_metric_operator.sql
@/opt/oracle/tivoli/alert/data/data_dbi_programs_confg.sql


prompt Creating the necessary procedure for alerting ..

@/opt/oracle/tivoli/alert/procedure/dbi_alert_add_p.prc
@/opt/oracle/tivoli/alert/procedure/dbi_alert_remove_p.prc
@/opt/oracle/tivoli/alert/procedure/dbi_alert_report_p.prc


prompt Populating the data to alert for tablespace thresholds ..

@/opt/oracle/tivoli/alert/sql/insert_dbi_metric_threshold.sql


prompt Scheduling the alert job via DBMS_SCHEDULER ..

@/opt/oracle/tivoli/alert/sql/create_job_dbimgr.sql


exit

EOF

done

