CREATE TABLE DBIMGR.DBI_METRIC_THRESHOLD
(
  METRIC_VAL                NUMBER              NOT NULL,
  METRIC_WARN_OPERATOR      NUMBER              NOT NULL,
  METRIC_WARN_THRESHOLD     NUMBER              NOT NULL,
  METRIC_CRTCL_OPERATOR     NUMBER              NOT NULL,
  METRIC_CRTCL_THRESHOLD    NUMBER              NOT NULL,
  METRIC_OBSRVTN_THRESHOLD  NUMBER              NOT NULL,
  METRIC_OBJECTS            VARCHAR2(200 BYTE),
  METRIC_FLAG               VARCHAR2(1 BYTE)    NOT NULL,
  METRIC_INSTANCE_NAME      VARCHAR2(30 BYTE)
)
TABLESPACE DBIDAT01
LOGGING
NOCOMPRESS
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX DBIMGR.DBI_METRIC_THRESHOLD_U01 ON DBIMGR.DBI_METRIC_THRESHOLD
(METRIC_VAL, METRIC_OBJECTS, METRIC_INSTANCE_NAME)
LOGGING
TABLESPACE DBIDAT01
NOPARALLEL;


ALTER TABLE DBIMGR.DBI_METRIC_THRESHOLD ADD (
  CONSTRAINT DBI_METRIC_THRESHOLD_C01
 CHECK (METRIC_FLAG in ('Y','N','y','n')),
  CONSTRAINT DBI_METRIC_THRESHOLD_C02
 CHECK (CASE WHEN metric_crtcl_operator =3 AND metric_crtcl_threshold < metric_warn_threshold  THEN 1                  when metric_crtcl_operator =2    AND metric_crtcl_threshold < metric_warn_threshold then 1                   WHEN metric_crtcl_operator =4  AND   metric_crtcl_threshold > metric_warn_threshold THEN 1                when metric_crtcl_operator =0 AND metric_crtcl_threshold > metric_warn_threshold THEN 1                when metric_crtcl_operator not in (0,2,3,4) then 1                ELSE 0                            END =1),
  CONSTRAINT DBI_METRIC_THRESHOLD_C03
 CHECK (METRIC_OBSRVTN_THRESHOLD between 30 and 60),
  CONSTRAINT DBI_METRIC_THRESHOLD_C04
 CHECK (METRIC_CRTCL_OPERATOR != 5 and   METRIC_WARN_OPERATOR != 5),
  CONSTRAINT DBI_METRIC_THRESHOLD_C05
 CHECK (CASE WHEN metric_crtcl_operator = metric_warn_operator  THEN 1   ELSE 0   END =1),
  CONSTRAINT DBI_METRIC_THRESHOLD_C06
 CHECK (CASE WHEN metric_crtcl_threshold  != metric_warn_threshold  THEN 1   ELSE 0   END =1),
  CONSTRAINT DBI_METRIC_THRESHOLD_C07
 CHECK (CASE   WHEN metric_val = 146 and  Metric_warn_operator=3 THEN 1    WHEN metric_val = 146 and  Metric_warn_operator=2 THEN 1   WHEN metric_val != 146 then 1   ELSE 0   END =1),
  CONSTRAINT DBI_METRIC_THRESHOLD_C08
 CHECK (CASE   WHEN metric_val = 145 and  Metric_warn_operator=0 THEN 1   WHEN metric_val = 145 and  Metric_warn_operator=4 THEN 1   WHEN metric_val != 145 then 1   ELSE 0   END =1),
  CONSTRAINT DBI_METRIC_THRESHOLD_U01
 UNIQUE (METRIC_VAL, METRIC_OBJECTS,METRIC_INSTANCE_NAME)
    USING INDEX
    TABLESPACE DBIDAT01);

ALTER TABLE DBIMGR.DBI_METRIC_THRESHOLD ADD (
  CONSTRAINT DBI_METRIC_THRESHOLD_R03
 FOREIGN KEY (METRIC_VAL)
 REFERENCES DBIMGR.DBI_METRIC (METRIC_VAL),
  CONSTRAINT DBI_METRIC_THRESHOLD_R02
 FOREIGN KEY (METRIC_CRTCL_OPERATOR)
 REFERENCES DBIMGR.DBI_METRIC_OPERATOR (METRIC_OPER_VALUE),
  CONSTRAINT DBI_METRIC_THRESHOLD_R01
 FOREIGN KEY (METRIC_WARN_OPERATOR)
 REFERENCES DBIMGR.DBI_METRIC_OPERATOR (METRIC_OPER_VALUE));




GRANT SELECT ON DBIMGR.DBI_METRIC_THRESHOLD TO DBIMGR_SELECT_ROLE;

GRANT DELETE, INSERT, SELECT, UPDATE ON DBIMGR.DBI_METRIC_THRESHOLD TO DBIMGR_UPDATE_ROLE;
