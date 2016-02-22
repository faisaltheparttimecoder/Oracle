######################################################################################################
# Document name         : READ_ME_ALERT_INSTALL_RAC_INFRASTRUCTURE
# Author                : Faisal
# Initial Creation      : 7/21/2010
# Purpose               : To document the procedure to installing rac infrasture alerts.
#------------------------------------------------------------------------------------------------------

Script Name             : inf_rac_dg_tb_alerts.sh
Purpose                 : To alert on RAC infrastructure.
Description             : The script below does the following task.

                                1. Check for the database availability.
                                2. Check for Diskgroup status and alerts if it reached its threshold
                                3. Check for tablespace status and alerts if it reached its threshold

Requirment              : The script accepts two parameters
                                1. ORACLE_SID - database name
                                2. Incident type: E = email or T = ticket

Scheduling procedure    :

1 - Please have the directory structure ( i.e bin , log , tmp , sql , env ) created in the manner below at any location                                                          you prefer.

eg.s

sf6ux003(oracle:NONE)/net/csmux101/aix_software/oracle/inf/RAC_10g_11g_post_db_scripts/shellscripts: ls -ltr
total 0
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 tmp/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 sql/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 log/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:10 env/
drwxr-xr-x   2 oracle   2580         256 Aug  6 05:15 bin/

2. Identify the database name and incident type that you wish to achive for this alert , The incident type take in two p                                                         arameters E ( for Email ) and T ( for HPSD Ticket).

3. Please while scheduling do take a look at the section script which accept parameters , so that it suit your requirmen                                                         ts.

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


#ORATAB=/var/opt/oracle/oratab ;export ORATAB
ORATAB=/etc/oratab ;export ORATAB
retension_period=0 ; export retension_period
tivoli_log=/apps/log/target_oracle_alerts.log ; export tivoli_log
dg_alert_thershold=90 ; export=dg_alert_thershold
tb_alert_thershold=90 ; export=tb_alert_thershold
warn_severity=SEVERITY3; export $warn_severity
cric_severity=SEVERITY2; export $cric_severity


echo
echo INFO - Accepting the variables that is important for the alert - complete.
echo
echo


4. Place the entire in Crontab or Control-M of your preference .

eg.s to place in crontab

30 00 1 * * /opt/oracle/inf_rac/bin/inf_rac_dg_tb_alerts.sh DATABASE T 2>&1 > /opt/oracle/inf_rac/log/inf_rac_alerts.cro                                                         nlog.


5. The alerts detected will be written by the program to the tivoli log , please make sure that the tivoli log is monito                                                         red by the ESM team if its a new server.



