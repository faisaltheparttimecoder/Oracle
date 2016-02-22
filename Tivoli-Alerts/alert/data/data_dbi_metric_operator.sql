SET DEFINE OFF;
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_CONTAINS', 5, 'Value contained in a list of threshold values is considered a violation');
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_DO_NOT_CHECK', 7, 'Dont apply default threshold to OBJECT_TYPE_TABLESPACE');
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_EQ', 1, 'Value equal to the threshold one is a violation');
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_GE', 4, 'Value greater or equal to the threshold is a violation');
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_GT', 0, 'Value greater than the threshold is a violation');
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_LE', 3, 'Value less or equal than the threshold is a violation');
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_LT', 2, 'Value less than the threshold is a violation');
Insert into DBIMGR.DBI_METRIC_OPERATOR
   (METRIC_OPER_NAME, METRIC_OPER_VALUE, METRIC_OPER_DESC)
 Values
   ('OPERATOR_NE', 6, 'Value not equal to the threshold one is a violation');
COMMIT;
