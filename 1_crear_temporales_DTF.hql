DROP TABLE IF EXISTS prdlnd_bdu_riesgo_bdu.TMP_dtf;


CREATE EXTERNAL TABLE prdlnd_bdu_riesgo_bdu.TMP_dtf (
rowkey      string        COMMENT '',
dtf_ind	    Int           COMMENT '',
trf_num	    string        COMMENT '',
cnv_num	    string        COMMENT '',
emp_num_rut	string        COMMENT '',
emp_vrt_rut	string        COMMENT '',
dtf_cta_dst	string        COMMENT '',
dtf_nom_cta	string        COMMENT '',
dtf_bco_dst	string        COMMENT '',
dtf_mto	    decimal(19,4) COMMENT '',
dtf_est	    string        COMMENT '',
dtf_cod_est	string        COMMENT '',
dtf_tip_pag	string        COMMENT '',
dtf_rut_dst	string        COMMENT '',
dtf_vrt_dst	string        COMMENT '',
dtf_nom_dst	string        COMMENT '',
dtf_gls_1	string        COMMENT '',
dtf_gls_2	string        COMMENT '',
dtf_gls_3	string        COMMENT '',
dtf_gls_4	string        COMMENT '',
dtf_gls_5	string        COMMENT '',
dtf_gls_6	string        COMMENT '',
dtf_gls_7	string        COMMENT '',
dtf_gls_8	string        COMMENT '',
dtf_gls_9	string        COMMENT '',
dtf_gls_10	string        COMMENT '',
dtf_gls_11	string        COMMENT '',
dtf_gls_12	string        COMMENT '',
dtf_gls_13	string        COMMENT '',
dtf_gls_14	string        COMMENT '',
dtf_gls_15	string        COMMENT ''
)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.hbase.HBaseSerDe'
STORED BY
  'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES (
  'hbase.columns.mapping'=':key,cf:dtf_ind,cf:trf_num,cf:cnv_num,cf:emp_num_rut,cf:emp_vrt_rut,cf:dtf_cta_dst,cf:dtf_nom_cta,cf:dtf_bco_dst,cf:dtf_mto,cf:dtf_est,cf:dtf_cod_est,cf:dtf_tip_pag,cf:dtf_rut_dst,cf:dtf_vrt_dst,cf:dtf_nom_dst,cf:dtf_gls_1,cf:dtf_gls_2,cf:dtf_gls_3,cf:dtf_gls_4,cf:dtf_gls_5,cf:dtf_gls_6,cf:dtf_gls_7,cf:dtf_gls_8,cf:dtf_gls_9,cf:dtf_gls_10,cf:dtf_gls_11,cf:dtf_gls_12,cf:dtf_gls_13,cf:dtf_gls_14,cf:dtf_gls_15',
  'serialization.format'='1')
TBLPROPERTIES (
  'hbase.table.name'='SYB_banele:dtf',
  'transient_lastDdlTime'='1591286883');
