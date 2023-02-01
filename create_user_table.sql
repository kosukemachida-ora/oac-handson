create user dbuser30 identified by Welcome1234##;
grant dwrole to dbuser30;
alter user dbuser30 quota unlimited on data;
--
CREATE TABLE "DBUSER30"."CUSTOMER" 
(
	"顧客ID"			VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"名前"				VARCHAR2(128) COLLATE "USING_NLS_COMP", 
	"ふりがな"			VARCHAR2(128) COLLATE "USING_NLS_COMP", 
	"メールアドレス"	VARCHAR2(128) COLLATE "USING_NLS_COMP", 
	"性別"				VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"生年月日"			DATE, 
	"年齢"				NUMBER(38,0), 
	"年代"				VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"婚姻"				VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"都道府県"			VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"電話番号"			VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"職業"				VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"人数"				NUMBER(38,0)
);
--
CREATE TABLE "DBUSER30"."RFM" 
(
	"顧客ID"			VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"購買金額"			NUMBER(38,0), 
	"購買金額平均"		NUMBER(38,0), 
	"購買金額Mランク"	VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"購買頻度"			NUMBER(38,0), 
	"購買頻度平均"		NUMBER(38,0), 
	"購買頻度Fランク"	VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"最新購買日"		VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"最新購買日Rランク"	VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"新規顧客"			VARCHAR2(26) COLLATE "USING_NLS_COMP", 
	"人数"				NUMBER(38,0)
);
--
select table_name from dba_tables where owner='DBUSER30';

