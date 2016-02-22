SET DEFINE OFF;
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (19, 'PHYSICAL_WRITES_LOB_TXN', 'Direct LOB Physical Writes (for each transaction)', 'Writes for each Transaction', 1, 
    2015);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (1, 'SQL_SRV_RESPONSE_TIME', 'Service Response (for each execution)', 'Seconds', 1, 
    2106);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (2, 'BUFFER_CACHE_HIT', 'Buffer Cache Hit (%)', '% of cache accesses', 1, 
    2000);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (3, 'LIBRARY_CACHE_HIT', 'Library Cache Hit (%)', '% of cache accesses', 1, 
    2112);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (5, 'MEMORY_SORTS_PCT', 'Sorts in Memory (%)', '% of sorts', 1, 
    2001);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (6, 'REDO_ALLOCATION_HIT', 'Redo Log Allocation Hit', '% of redo allocations', 1, 
    2002);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (8, 'PHYSICAL_READS_SEC', 'Physical Reads (for each second)', 'Reads for each Second', 1, 
    2004);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (9, 'PHYSICAL_READS_TXN', 'Physical Reads (for each transaction)', 'Reads for each Transaction', 1, 
    2005);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (10, 'PHYSICAL_WRITES_SEC', 'Physical Writes (for each second)', 'Writes for each Second', 1, 
    2006);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (11, 'PHYSICAL_WRITES_TXN', 'Physical Writes (for each transaction)', 'Writes for each Transaction', 1, 
    2007);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (12, 'PHYSICAL_READS_DIR_SEC', 'Direct Physical Reads (for each second)', 'Reads for each Second', 1, 
    2008);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (13, 'PHYSICAL_READS_DIR_TXN', 'Direct Physical Reads (for each transaction)', 'Reads for each Transaction', 1, 
    2009);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (14, 'PHYSICAL_WRITES_DIR_SEC', 'Direct Physical Writes (for each second)', 'Writes for each Second', 1, 
    2010);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (15, 'PHYSICAL_WRITES_DIR_TXN', 'Direct Physical Writes (for each transaction)', 'Writes for each Transaction', 1, 
    2011);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (16, 'PHYSICAL_READS_LOB_SEC', 'Direct LOB Physical Reads (for each second)', 'Reads for each Second', 1, 
    2012);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (17, 'PHYSICAL_READS_LOB_TXN', 'Direct LOB Physical Reads (for each transaction)', 'Reads for each Transaction', 1, 
    2013);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (18, 'PHYSICAL_WRITES_LOB_SEC', 'Direct LOB Physical Writes (for each second)', 'Writes for each Second', 1, 
    2014);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (22, 'DATABASE_WAIT_TIME', 'Database Wait Time (%)', '% of all database time', 1, 
    2107);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (23, 'DATABASE_CPU_TIME', 'Database CPU Time (%)', '% of all database time', 1, 
    2108);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (24, 'LOGONS_SEC', 'Cumulative Logons (for each second)', 'Logons for each Second', 1, 
    2018);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (25, 'LOGONS_TXN', 'Cumulative Logons (for each transaction)', 'Logons for each Transaction', 1, 
    2019);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (26, 'LOGONS_CURRENT', 'Current Number of Logons', 'Number of Logons', 1, 
    2103);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (28, 'OPEN_CURSORS_TXN', 'Cumulative Open Cursors (for each transaction)', 'Cursors for each Transaction', 1, 
    2021);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (29, 'OPEN_CURSORS_CURRENT', 'Current Number of Cursors', 'Number of Cursors', 1, 
    2104);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (30, 'USER_COMMITS_SEC', 'User Commits (for each second)', 'Commits for each Second', 1, 
    2022);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (31, 'USER_COMMITS_TXN', 'User Commits (for each transaction)', 'Commits for each Transaction', 1, 
    2023);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (33, 'USER_ROLLBACKS_TXN', 'User Rollbacks (for each transaction)', 'Rollbacks for each Transaction', 1, 
    2025);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (34, 'USER_CALLS_SEC', 'User Calls (for each second)', 'Calls for each Second', 1, 
    2026);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (35, 'USER_CALLS_TXN', 'User Calls (for each transaction)', 'Calls for each Transaction', 1, 
    2027);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (36, 'RECURSIVE_CALLS_SEC', 'Recursive Calls (for each second)', 'Calls for each Second', 1, 
    2028);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (38, 'SESS_LOGICAL_READS_SEC', 'Session Logical Reads (for each second)', 'Reads for each Second', 1, 
    2030);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (39, 'SESS_LOGICAL_READS_TXN', 'Session Logical Reads (for each transaction)', 'Reads for each Transaction', 1, 
    2031);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (40, 'DBWR_CKPT_SEC', 'DBWR Checkpoints (for each second)', 'Checkpoints for each Second', 1, 
    2032);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (42, 'REDO_WRITES_SEC', 'Redo Writes (for each second)', 'Writes for each Second', 1, 
    2034);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (44, 'LONG_TABLE_SCANS_SEC', 'Scans on Long Tables (for each second)', 'Scans for each Second', 1, 
    2036);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (45, 'LONG_TABLE_SCANS_TXN', 'Scans on Long Tables (for each transaction)', 'Scans for each Transaction', 1, 
    2037);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (46, 'TOTAL_TABLE_SCANS_SEC', 'Total Table Scans (for each second)', 'Scans for each Second', 1, 
    2038);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (47, 'TOTAL_TABLE_SCANS_TXN', 'Total Table Scans (for each transaction)', 'Scans for each Transaction', 1, 
    2039);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (49, 'FULL_INDEX_SCANS_TXN', 'Fast Full Index Scans (for each transaction)', 'Scans for each Transaction', 1, 
    2041);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (50, 'TOTAL_INDEX_SCANS_SEC', 'Total Index Scans (for each second)', 'Scans for each Second', 1, 
    2042);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (51, 'TOTAL_INDEX_SCANS_TXN', 'Total Index Scans (for each transaction)', 'Scans for each Transaction', 1, 
    2043);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (52, 'TOTAL_PARSES_SEC', 'Total Parses (for each second)', 'Parses for each Second', 1, 
    2044);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (54, 'HARD_PARSES_SEC', 'Hard Parses(for each second)', 'Parses for each Second', 1, 
    2046);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (55, 'HARD_PARSES_TXN', 'Hard Parses(for each transaction)', 'Parses for each Transaction', 1, 
    2047);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (56, 'PARSE_FAILURES_SEC', 'Parse Failures (for each second)', 'Parses for each Second', 1, 
    2048);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (57, 'PARSE_FAILURES_TXN', 'Parse Failures (for each transaction)', 'Parses for each Transaction', 1, 
    2049);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (58, 'DISK_SORT_SEC', 'Sorts to Disk (for each second)', 'Sorts for each Second', 1, 
    2051);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (60, 'ROWS_PER_SORT', 'Rows Processed for each Sort', 'Rows for each Sort', 1, 
    2053);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (61, 'EXECUTE_WITHOUT_PARSE', 'Executes Performed Without Parsing', '% of all executes', 1, 
    2054);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (62, 'SOFT_PARSE_PCT', 'Soft Parse (%)', '% of all parses', 1, 
    2055);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (63, 'CURSOR_CACHE_HIT', 'Cursor Cache Hit (%)', '% of soft parses', 1, 
    2050);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (66, 'NETWORK_BYTES_SEC', 'Network Bytes, for each second', 'Bytes for each Second', 1, 
    2058);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (70, 'SHARED_POOL_FREE_PCT', 'Shared Pool Free(%)', '% of shared pool', 1, 
    2114);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (71, 'AVERAGE_FILE_READ_TIME', 'Average File Read Time', 'Microseconds', 2, 
    7000);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (72, 'AVERAGE_FILE_WRITE_TIME', 'Average File Write Time', 'Microseconds', 2, 
    7001);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (75, 'SESSION_LIMIT_PCT', 'Session Limit Usage (%)', '% of maximum value', 1, 
    2119);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (76, 'USER_LIMIT_PCT', 'User Limit Usage (%)', '% of maximum value', 1, 
    2105);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (77, 'AVG_USERS_WAITING', 'Average Number of Users Waiting on a Class of Wait Events', 'Count of sessions', 4, 
    1000);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (78, 'DB_TIME_WAITING', 'Percent of Database Time Spent Waiting on a Class of Wait Events', '% of Database Time', 4, 
    1001);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (104, 'ENQUEUE_TIMEOUTS_SEC', 'Enqueue Timeouts (for each second)', 'Timeouts for each Second', 1, 
    2059);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (105, 'ENQUEUE_TIMEOUTS_TXN', 'Enqueue Timeouts (for each transaction)', 'Timeouts for each Transaction', 1, 
    2060);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (106, 'ENQUEUE_WAITS_SEC', 'Enqueue Waits (for each second)', 'Waits for each Second', 1, 
    2061);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (107, 'ENQUEUE_WAITS_TXN', 'Enqueue Waits (for each transaction)', 'Waits for each Transaction', 1, 
    2062);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (108, 'ENQUEUE_DEADLOCKS_SEC', 'Enqueue Deadlocks (for each second)', 'Deadlocks for each Second', 1, 
    2063);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (109, 'ENQUEUE_DEADLOCKS_TXN', 'Enqueue Deadlocks (for each transaction)', 'Deadlocks for each Transaction', 1, 
    2064);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (110, 'ENQUEUE_REQUESTS_SEC', 'Enqueue Requests (for each second)', 'Requests for each Second', 1, 
    2065);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (111, 'ENQUEUE_REQUESTS_TXN', 'Enqueue Requests (for each transaction)', 'Requests for each Transaction', 1, 
    2066);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (112, 'DB_BLKGETS_SEC', 'DB Block Gets (for each second)', 'Gets for each Second', 1, 
    2067);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (113, 'DB_BLKGETS_TXN', 'DB Block Gets (for each transaction)', 'Gets for each Transaction', 1, 
    2068);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (114, 'CONSISTENT_GETS_SEC', 'Consistent Gets (for each second)', 'Gets for each Second', 1, 
    2069);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (115, 'CONSISTENT_GETS_TXN', 'Consistent Gets (for each transaction)', 'Gets for each Transaction', 1, 
    2070);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (116, 'DB_BLKCHANGES_SEC', 'DB Block Changes (for each second)', 'Changes for each Second', 1, 
    2071);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (117, 'DB_BLKCHANGES_TXN', 'DB Block Changes (for each transaction)', 'Changes for each Transaction', 1, 
    2072);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (118, 'CONSISTENT_CHANGES_SEC', 'Consistent Changes (for each second)', 'Changes for each Second', 1, 
    2073);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (119, 'CONSISTENT_CHANGES_TXN', 'Consistent Changes (for each transaction)', 'Changes for each Transaction', 1, 
    2074);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (120, 'SESSION_CPU_SEC', 'Database CPU (for each second)', 'Microseconds for each Second', 1, 
    2075);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (121, 'SESSION_CPU_TXN', 'Database CPU (for each transaction)', 'Microseconds for each Transaction', 1, 
    2076);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (122, 'CR_BLOCKS_CREATED_SEC', 'CR Blocks Created (for each second)', 'Blocks for each Second', 1, 
    2077);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (123, 'CR_BLOCKS_CREATED_TXN', 'CR Blocks Created (for each transaction)', 'Blocks for each Transaction', 1, 
    2078);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (124, 'CR_RECORDS_APPLIED_SEC', 'CR Undo Records Applied (for each second)', 'Records for each Second', 1, 
    2079);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (125, 'CR_RECORDS_APPLIED_TXN', 'CR Undo Records Applied (for each transaction)', 'Records for each Transaction', 1, 
    2080);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (126, 'RB_RECORDS_APPLIED_SEC', 'Rollback Undo Records Applied (for each second)', 'Records for each Second', 1, 
    2081);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (127, 'RB_RECORDS_APPLIED_TXN', 'Rollback Undo Records Applied(for each transaction)', 'Records for each Transaction', 1, 
    2082);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (128, 'LEAF_NODE_SPLITS_SEC', 'Leaf Node Splits (for each second)', 'Splits for each Second', 1, 
    2083);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (129, 'LEAF_NODE_SPLITS_TXN', 'Leaf Node Splits (for each transaction)', 'Splits for each Transaction', 1, 
    2084);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (130, 'BRANCH_NODE_SPLITS_SEC', 'Branch Node Splits (for each second)', 'Splits for each Second', 1, 
    2085);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (131, 'BRANCH_NODE_SPLITS_TXN', 'Branch Node Splits (for each transaction)', 'Splits for each Transaction', 1, 
    2086);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (132, 'GC_BLOCKS_CORRUPT', 'Global Cache Blocks Corrupt', 'Blocks', 1, 
    2101);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (133, 'GC_BLOCKS_LOST', 'Global Cache Blocks Lost', 'Blocks', 1, 
    2102);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (134, 'GC_AVG_CR_GET_TIME', 'Global Cache CR Request', 'Milliseconds', 1, 
    2098);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (135, 'GC_AVG_CUR_GET_TIME', 'Global Cache Current Request', 'Milliseconds', 1, 
    2099);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (136, 'PX_DOWNGRADED_SEC', 'Downgraded Parallel Operations (for each second)', 'Operations for each Second', 1, 
    2093);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (137, 'PX_DOWNGRADED_25_SEC', 'Downgraded to 25% and more (for each second)', 'Operations for each Second', 1, 
    2087);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (138, 'PX_DOWNGRADED_50_SEC', 'Downgraded to 50% and more (for each second)', 'Operations for each Second', 1, 
    2088);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (139, 'PX_DOWNGRADED_75_SEC', 'Downgraded to 75% and more (for each second)', 'Operations for each Second', 1, 
    2089);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (140, 'PX_DOWNGRADED_SER_SEC', 'Downgraded to serial (for each second)', 'Operations for each Second', 1, 
    2095);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (141, 'BLOCKED_USERS', 'Number of Users blocked by some Session', 'Number of Users', 9, 
    4000);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (142, 'PGA_CACHE_HIT', 'PGA Cache Hit (%)', '% bytes processed in PGA', 1, 
    2115);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (143, 'ELAPSED_TIME_PER_CALL', 'Elapsed time for each user call for each service', 'Microseconds for each call', 3, 
    6000);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (144, 'CPU_TIME_PER_CALL', 'CPU time for each user call for each service', 'Microseconds for each call', 3, 
    6001);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (145, 'TABLESPACE_PCT_FULL', 'Tablespace space usage', '% full', 5, 
    9000);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (146, 'TABLESPACE_BYT_FREE', 'Tablespace bytes space usage', 'Kilobytes free', 5, 
    9001);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (4, 'LIBRARY_CACHE_MISS', 'Library Cache Miss (%)', '% of cache accesses', 1, 
    2113);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (20, 'REDO_GENERATED_SEC', 'Redo Generated (for each second)', 'Redo Bytes for each Second', 1, 
    2016);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (21, 'REDO_GENERATED_TXN', 'Redo Generated (for each transaction)', 'Redo Bytes for each Transaction', 1, 
    2017);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (27, 'OPEN_CURSORS_SEC', 'Cumulative Open Cursors (for each second)', 'Cursors for each Second', 1, 
    2020);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (32, 'USER_ROLLBACKS_SEC', 'User Rollbacks (for each second)', 'Rollbacks for each Second', 1, 
    2024);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (37, 'RECURSIVE_CALLS_TXN', 'Recursive Calls (for each transaction)', 'Calls for each Transaction', 1, 
    2029);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (43, 'REDO_WRITES_TXN', 'Redo Writes (for each transaction)', 'Writes for each Transaction', 1, 
    2035);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (48, 'FULL_INDEX_SCANS_SEC', 'Fast Full Index Scans (for each second)', 'Scans for each Second', 1, 
    2040);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (53, 'TOTAL_PARSES_TXN', 'Total Parses(for each transaction)', 'Parses for each Transaction', 1, 
    2045);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (59, 'DISK_SORT_TXN', 'Sorts to Disk (for each transaction)', 'Sorts for each Transaction', 1, 
    2052);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (64, 'USER_CALLS_PCT', 'User Calls (%)', '% of all calls', 1, 
    2056);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (67, 'RESPONSE_TXN', 'Response (for each transaction)', 'Seconds for each Transaction', 1, 
    2109);
Insert into DBIMGR.DBI_METRIC
   (METRIC_VAL, METRIC_OPERATOR, METRIC_DESCRIPTION, METRIC_UNIT, METRIC_OBJECT_TYPE_VAL, 
    METRIC_ID)
 Values
   (74, 'PROCESS_LIMIT_PCT', 'Process Limit Usage (%)', '% of maximum value', 1, 
    2118);
COMMIT;
