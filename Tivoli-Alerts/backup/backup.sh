#!/bin/ksh
#----------------------------------------------------------#
#
#   Author: Faisal.
#   Purpose: To install the backup alert framework.
#   Mod Hist:
#----------------------------------------------------------#
#if [ $# -ne 1 ]
#then
#   echo "\nUsage:  $0 <ORACLE_SID> \n"
#   exit 1
#fi


cat /opt/oracle/tivoli/backup/databaselist.log | grep -v "^#" | grep -v  "^$" | while read line
do
i=`echo $line | awk '{print $1}'`
ORACLE_SID=$i; export ORACLE_SID
ORATAB=/var/opt/oracle/oratab
export ORACLE_HOME=`cat ${ORATAB} | egrep -i ${ORACLE_SID} | awk -F: '{print $2}'`
PATH=${ORACLE_HOME}/bin:/usr/bin:/usr/sbin:/usr/ccs/bin:/usr/ucb:/usr/openwin/bin:/etc; export PATH
LD_LIBRARY_PATH=${ORACLE_HOME}/lib:/usr/lib:/usr/openwin/bin:/usr/dt/lib:/usr/ucblib; export LD_LIBRARY_PATH
TIVOLI_LOG=/opt/oracle/tivoli/backup/log/tivoli_${ORACLE_SID}_run.log


${ORACLE_HOME}/bin/sqlplus -s "/ as sysdba" <<EOF > $TIVOLI_LOG


prompt Creating tables for the backup alert..

@/opt/oracle/tivoli/backup/table/dbi_alert_generation.sql


prompt Granting required access to DBIMGR schema for backup alerting ..

@/opt/oracle/tivoli/backup/grants/grants_rman_status.sql


prompt Populating data on backup alerts table ..

@/opt/oracle/tivoli/backup/data/data_dbi_program_confg.sql


prompt Creating the necessary procedure for backup alerting ..

@/opt/oracle/tivoli/backup/procedure/dbi_alert_report_bkup_p.prc


prompt Scheduling the backup job via DBMS_SCHEDULER ..

@/opt/oracle/tivoli/backup/sql/create_job_dbimgr.sql


exit

EOF

done

