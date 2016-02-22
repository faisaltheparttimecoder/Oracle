######################################################################################################
# Document name         : READ_ME_ALERT_INSTALL_RAC_CRS
# Author                : Faisal
# Initial Creation      : 7/21/2010
# Purpose               : To document the procedure to installing rac crs alerts.
#------------------------------------------------------------------------------------------------------

Script Name             : inf_rac_crs_alerts.sh
Purpose                 : CRS resource status query script.
Description             : The script does the following task.
                                1. Returns formatted version of crs_stat -t, in tabular format, with the complete rsc names and filtering keywords
                                2. The argument, $RSC_KEY, is optional and if passed to the script, will limit the output to HA resources whose names match $RSC_KEY.
Requirment              : The script accepts two parameters
                                1. CRS HOME - Base Location of CRS HOME.
                                2. Incident type: E = email or T = ticket
                                3. RSC_KEY - This is optional parameter , if used it will filter the output or will not send out unwanted service alerts.

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

2. Identify the CRS HOME and incident type that you wish to achive for this alert , The incident type take in two parameters E ( for Email ) and T ( for HPSD Ticket) and resource key to limit the output ( this is optional ).

3. Please while scheduling do take a look at the section script which accept parameters , so that it suit your requirments.

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

retension_period=0 ; export retension_period
tivoli_log=/apps/log/target_oracle_alerts.log ; export tivoli_log
warn_severity=SEVERITY3; export $warn_severity
cric_severity=SEVERITY2; export $cric_severity


echo
echo INFO - Accepting the variables that is important for the alert - complete.
echo
echo


4. Place the entire in Crontab or Control-M of your preference .

eg.s to place in crontab

30 00 1 * * /opt/oracle/inf_rac/bin/inf_rac_crs_alerts.sh /opt/oracle/product/11.1.0.7.CRS T 2>&1 > /opt/oracle/inf_rac/log/inf_rac_crs_alerts.cronlog.


5. The alerts detected will be written by the program to the tivoli log , please make sure that the tivoli log is monitored by the ESM team if its a new server.



