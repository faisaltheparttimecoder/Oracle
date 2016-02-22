SET DEFINE OFF;
Insert into DBIMGR.DBI_METRIC_OBJECTTYPE
   (METRIC_OBJECT_TYPE, METRIC_OBJECT_VALUE, METRIC_TYPE_DESC)
 Values
   ('OBJECT_TYPE_EVENT_CLASS', 4, 'Metrics collected on wait event class level. Currently supported metrics are AVG_USERS_WAITING and DB_TIME_WAITING');
Insert into DBIMGR.DBI_METRIC_OBJECTTYPE
   (METRIC_OBJECT_TYPE, METRIC_OBJECT_VALUE, METRIC_TYPE_DESC)
 Values
   ('OBJECT_TYPE_FILE', 2, 'Metrics collected on the file level. These are used for AVERAGE_FILE_READ_TIME and AVERAGE_FILE_WRITE_TIME metrics');
Insert into DBIMGR.DBI_METRIC_OBJECTTYPE
   (METRIC_OBJECT_TYPE, METRIC_OBJECT_VALUE, METRIC_TYPE_DESC)
 Values
   ('OBJECT_TYPE_SERVICE', 3, 'Metrics collected on the service level. Currently ELAPSED_TIME_PER_CALL and CPU_TIME_PER_CALL are collected');
Insert into DBIMGR.DBI_METRIC_OBJECTTYPE
   (METRIC_OBJECT_TYPE, METRIC_OBJECT_VALUE, METRIC_TYPE_DESC)
 Values
   ('OBJECT_TYPE_SESSION', 9, 'Metrics collected on the session level. Currently only BLOCKED_USERS is collected. The threshold can only be set at the instance level, which means that no object name should be specified when setting the threshold for this type of metric');
Insert into DBIMGR.DBI_METRIC_OBJECTTYPE
   (METRIC_OBJECT_TYPE, METRIC_OBJECT_VALUE, METRIC_TYPE_DESC)
 Values
   ('OBJECT_TYPE_SYSTEM', 1, 'Metrics collected on the system level for each instance');
Insert into DBIMGR.DBI_METRIC_OBJECTTYPE
   (METRIC_OBJECT_TYPE, METRIC_OBJECT_VALUE, METRIC_TYPE_DESC)
 Values
   ('OBJECT_TYPE_TABLESPACE', 5, 'Metrics collected on the tablespace level. Currently only TABLESPACE_PCT_FULL,TABLESPACE_PCT_FREE is collected');
COMMIT;
