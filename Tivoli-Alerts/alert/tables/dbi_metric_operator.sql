CREATE TABLE DBIMGR.DBI_METRIC_OPERATOR
(
  METRIC_OPER_NAME   VARCHAR2(30 BYTE)          NOT NULL,
  METRIC_OPER_VALUE  NUMBER,
  METRIC_OPER_DESC   VARCHAR2(1000 BYTE)        NOT NULL
)
TABLESPACE DBIDAT01
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX DBIMGR.DBI_METRIC_OPERATOR_PK ON DBIMGR.DBI_METRIC_OPERATOR
(METRIC_OPER_VALUE)
LOGGING
TABLESPACE DBIDAT01
NOPARALLEL;


ALTER TABLE DBIMGR.DBI_METRIC_OPERATOR ADD (
  CONSTRAINT DBI_METRIC_OPERATOR_PK
 PRIMARY KEY
 (METRIC_OPER_VALUE)
    USING INDEX 
    TABLESPACE DBIDAT01);



GRANT SELECT ON DBIMGR.DBI_METRIC_OPERATOR TO DBIMGR_SELECT_ROLE;

GRANT DELETE, INSERT, SELECT, UPDATE ON DBIMGR.DBI_METRIC_OPERATOR TO DBIMGR_UPDATE_ROLE;