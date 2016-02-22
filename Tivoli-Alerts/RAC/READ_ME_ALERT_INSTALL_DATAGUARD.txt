######################################################################################################
# Document name         : READ_ME_ALERT_INSTALL_DATAGUARD.
# Author                : Faisal
# Initial Creation      : 7/21/2010
# Purpose               : To document the procedure to installing rac dataguard alerts.
#------------------------------------------------------------------------------------------------------

Script name             : inf_dataguard_alerts.sh
Purpose                 : To alert on Dataguard infrastructure.
Description             : The script below does the following task.
                                1. Check the current sequence number from the primary database.
                                2. Check the current sequence number from the standby database.
                                3. Compare the difference and alert when the difference is greater than paramter log_diff.
Requirment              : The script accepts two parameters
                                1. ORACLE_SID_primary - Primary database name
                                2. ORACLE_SID_standby - Standby database name
                                3. Incident type: E = email or T = ticket

Scheduling procedure    :

1 - Please have the directory structure ( i.e bin , log , tmp , sql , env ) created in the manner below at any location you prefer.

eg.s

sf6ux003(oracle:NONE)/net/csmux101/aix_software/oracle/inf/RAC_10g_11g_post_db_scripts/shellscripts: ls -ltr
total 0
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 tmp/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 sql/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 log/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 env/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:15 bin/

2. Identify the Primary database name ,standby database names and incident type that you wish to achive for this alert , The incident type take in two parameters E ( for Email ) and T ( for HPSD Ticket).

3. Please while scheduling do take a look at the section script which accept parameters , so that it suit your requirments.

NOTE : The oratab should have the entry for ORACLE HOME for both the primary and secondary database.

eg.s the default setting for the script is below , please change it according to your enviroments

##
##
##-------------------------------- Accepting the parameter  -------------------------------------
##
##

echo
echo INFO - Accepting the variables that is important for the alert - start.
echo
echo

oratab=/var/opt/oracle/oratab ; export oratab
retension_period=0 ; export retension_period
tivoli_log=/apps/log/target_oracle_alerts.log ; export tivoli_log
log_diff=3 ; export log_diff
warn_severity=SEVERITY3; export $warn_severity
cric_severity=SEVERITY2; export $cric_severity


echo
echo INFO - Accepting the variables that is important for the alert - complete.
echo
echo



4. Place the entire in Crontab or Control-M of your preference .

eg.s to place in crontab

30 00 1 * * /opt/oracle/inf_rac/bin/inf_dataguard_alerts.sh ITLPTGT1 ITLPTGT2 T 2>&1 > /opt/oracle/inf_rac/log/inf_dataguard_alerts.cronlog.


5. The alerts detected will be written by the program to the tivoli log , please make sure that the tivoli log is monitored by the ESM team if its a new server.



