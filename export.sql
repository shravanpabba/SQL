--------------------------------------------------------
--  File created - Wednesday-April-22-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CAT_ID
--------------------------------------------------------

   CREATE SEQUENCE  "CAT_ID"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KEY_ID
--------------------------------------------------------

   CREATE SEQUENCE  "KEY_ID"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SCEKEY_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SCEKEY_ID"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 951 CACHE 50 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "CATEGORY" 
   (	"ID" NUMBER(4,0), 
	"CATEGORY_NAME" VARCHAR2(100 BYTE), 
	"CATEGORY_DESC" CLOB, 
	"ACTIVE_SW" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX" 
 LOB ("CATEGORY_DESC") STORE AS BASICFILE (
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table KEYWORD
--------------------------------------------------------

  CREATE TABLE "KEYWORD" 
   (	"ID" NUMBER(4,0), 
	"KEYWORD_NAME" VARCHAR2(1000 BYTE), 
	"CATEGORY_ID" NUMBER(4,0), 
	"ACTIVE_SW" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX" ;
--------------------------------------------------------
--  DDL for Table SCENARIOS
--------------------------------------------------------

  CREATE TABLE "SCENARIOS" 
   (	"ID" NUMBER(4,0), 
	"SCENARIO_NAME" VARCHAR2(200 BYTE), 
	"SCENARIO_DESC" CLOB, 
	"ACTIVE_SW" CHAR(1 BYTE), 
	"REL_PATH" VARCHAR2(100 BYTE), 
	"FILE_NAME" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX" 
 LOB ("SCENARIO_DESC") STORE AS BASICFILE (
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table SCENARIO_KEYWORD
--------------------------------------------------------

  CREATE TABLE "SCENARIO_KEYWORD" 
   (	"SCENARIO_KEYWORD_ID" NUMBER(4,0), 
	"SCENARIO_ID" NUMBER(4,0), 
	"KEYWORD_ID" NUMBER(4,0), 
	"ACTIVE_SW" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX" ;
REM INSERTING into CATEGORY
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (1,'HHM','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (2,'Individual Details','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (3,'Programs','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (4,'Modes','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (5,'Pregiram Request','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (6,'Relationship Details','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (7,'Interview Details','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (8,'Education Details','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (9,'Living Arrangement','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (10,'Citizenship','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (11,'Out of State Benefit','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (12,'Disability','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (13,'Special Medical Approval','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (14,'Pregnancy','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (15,'Tax Information','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (16,'Room and Board details','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (17,'Non custodial parent','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (18,'Liquid Asset','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (19,'Vehicle Asset','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (20,'Burial Asset','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (21,'Other Asset','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (22,'Livestock asset','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (23,'Compliance','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (24,'Earned Income','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (25,'Unearned Income','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (26,'Self Employment Income','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (27,'MAGI Income','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (28,'Dependent Care Expense','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (29,'Medical expense','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (30,'Child Support and Alimony Expense','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (31,'MAGI Expense','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (32,'Shelter Expense','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (33,'Utility Expense','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (34,'Other Expense','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (35,'Eligibility Results','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (36,'Filing Unit','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (37,'Budget Summary','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (38,'Missing Verification','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (39,'Authorization','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (40,'Notices','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (41,'Appeal Create','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (42,'Appeal Maintain','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (43,'Dismissal ','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (44,'Task','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (45,'HIP Pay/No Pay Screen','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (46,'Comments/Additonal check can be added','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (47,'SCH-Office','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (48,'SCH-Date to be selected','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (49,'SCH-Appointment Type','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (50,'SCH-Appointment Status','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (51,'SCH-Application Registration','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (52,'SCH-File Clearance','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (53,'SCH-Application Type','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (54,'SCH-DC','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (55,'SCH-Schedule Interview','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (56,'SCH-Interview Method','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (57,'SCH-Search Appontment','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (58,'SCH-Edit Apppointment ','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (59,'SCH-View and maintain Appointment','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (60,'SCH-View Calendar','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (61,'SCH-Create Activity','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (62,'SCH-View Activity','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (63,'SCH-Delete Activity','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (64,'Application Dispostion','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (65,'Case Association','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (66,'Application Registration-Validation check','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (67,'DC- validation check','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (68,'Individual Filing Taxes and  Individual Required To File Taxes ','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (69,'Withdraw program','Y');
Insert into CATEGORY (ID,CATEGORY_NAME,ACTIVE_SW) values (70,'Fuzzy Search Value','Y');
REM INSERTING into KEYWORD
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (363,'Parent - Child',6,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (272,'SNAP Interim Contact',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (60,'TANF,HCC',3,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (26,'Mother, Child1, Newborn Child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (157,'not related male and female',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (34,'Savings account - gross value 50',18,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (126,'Yes- Child - School attendance not met',23,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (173,'yes-''WITHDRAW-Written client request'' ',69,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (234,'Aunt , child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (209,'father of 800$',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (88,'Male',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (226,'Rent - Monthly - $875',32,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (122,'MASP should be eligible (Father and Mother) and MA 2 should be closed (Child). ',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (255,'Yes
Parent
Type: Wages
Frequency: Monthly
Amount: 2500',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (68,'Type: Disabled,
Verification: MRT,
Criteria: Receives or has been certified as eligible for SS Disability or blindness benefits,
Workforce Attached: No',12,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (321,'Alien Sponsor - Rent - Monthly - $875',32,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (159,'Yes, address details',67,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (187,'Eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (148,'Redetermination ',50,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (59,'Resource Assessment',49,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (263,'Eligible. All are eligible for SNAP',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (155,'Asset teast fail, income test Pass',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (220,'PayNoPay Date - Current Date
Activity Type - Payment',45,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (198,'dental care to husband of 25$',29,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (253,'Not Enrolled for all',8,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (331,'Yes-Notice of Dismissal',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (202,'Yes, parent:criteria: Receives or has been certified by the State to receive Medicaid as a blind or disabled individual',12,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (348,'Type of Assistance : MASP
AG size : 1
Status : Eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (23,'Trust, evaluated by LEGAL.
Total value: $1000
Available Value: $550',21,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (104,'Type of Assistance: TANF
Assistance group size: 2
Eligibility status: Eligible',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (133,'from last Day has an increase in earned income less than 133% FPL',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (119,'Type of Assistance: MASP (Father)
Assistance group size: 1
Eligibility status: Eligible
Type of Assistance: MASP (Mother)
Assistance group size: 1
Eligibility status: Eligible
Type of Assistance: MA2 (Child)
Assistance group size: 1
Eligibility status: Eligible',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (111,'$400(Wages/Salaries)',21,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (293,'Yes
',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (279,'Not Enrolled',8,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (318,'Alien Sponsor-Promissory Note - Mortgage - Gross value : $2000',18,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (228,'Parent - Disqualified Adult
Child - Eligible Child',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (365,'Special Circumstances - Death
Circumstance Start Date: 3/01/2016
 Co-operating Status - Co-Operating. ',17,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (69,'Type: Other - Non-Exempt,
Pay Frequency: Monthly,
Amount: 3000$
',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (50,'Begin Date as Today
',57,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (147,' review due date-45days of the case',48,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (140,'male',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (151,'-Other Non-Exempt Liquid Asset of gross value 7233.12 ',18,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (6,'Intake -
Type : Wages/Salaries
Pay Frequency : Monthly
Amount : 9000$
Revert To Open -
Type : Wages/Salaries
Pay Frequency : Monthly
Amount : 100$',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (58,'SNAP, TANF, HCC',3,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (37,'SNAP Eligible,
Assistance size : 2',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (283,'Yes-Application Complete',66,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (137,'Intake-MA eligible for child and tanf deied, add program add snap and snap and tanf both eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (146,'Snap closed in review then revert to open eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (53,'Application with SNAP',49,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (35,'Type : Other - Non-Exempt
Pay Frequency : Monthly
Amount : 200$ 
',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (239,'Male, In-Home, American Indian,Tribal Enrollment exists',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (333,'Yes
Disposition
Reason- Admin Error',42,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (247,'intake',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (361,'Mother , Child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (20,'Female',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (305,'In intake, HH is eligible for SNAP
In case change, SNAP benefits are closed due to reason ''INCOME IS MORE THAN THE 130% GROSS INCOME STANDARD''',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (206,'Tanf eligible, au:2',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (42,'Application registration',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (135,'Application registration, Intake, Add program',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (7,'Inake: SNAP Denied
Revert to open: SNAP Eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (178,'Yes, All members are eligible adults except daughter''s child who is an excluded adult.',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (176,'Yes - blindness',12,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (124,'Parent, Child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (82,'Participation Status: Eligible Adult, Excluded Adult
Ineligibility Reason: Person is a roomer|INDIVIDUAL DOES NOT PURCHASE AND PREPARE MEALS WITH MEMBERS OF THE ASSISTANCE GROUP',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (86,'Add Person:
Type: Wages,
Pay Frequency: Monthly,
Amount: 2598$',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (276,'Redetermination with SNAP',49,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (28,'TANF eligible,
AU : 3,
Benefit amount : $139',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (48,'N',54,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (100,'Yes
5000$
Resource transferred 12 months ago

Second run ED in intake - delete 5000 and add 500$ with Resource transferred 12 months ago',18,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (336,'Application Complete',66,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (8,'Y',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (181,'Yes - Wages , Monthly 1080$',26,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (218,'Father - Monthly - $369',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (354,'husband as “High School Diploma/High School Equivalency Test”, wife as “unknown',8,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (129,'from Day0 has an increase in earned income less than 133% FPL',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (315,'eligibility results of MA 1 (Father)  and MA 2 (Child)',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (110,'Intake, Add program',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (169,'YES,type- adoption subsidy',13,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (260,'Husband and Wife',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (344,'Dad, Mom, Child
In the Household',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (11,'Father, Mother and Child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (214,'$150/month ',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (51,'NA
',59,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (175,'Grandfather, daughter, daughter''s spouse, daughter''s child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (240,'Yes - Wages , Monthly 130$',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (29,'Task T0007 verified - for sanction/penalty added / changed.',44,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (295,'In Household',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (170,'Wages to PI of 2000$ monthly',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (229,'1 individual , living in home and in the state of Indiana with US citizenship',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (297,'All the 3 individuals are eligible for SNAP, TANF, MA',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (337,'Husband and Wife
In the Household',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (329,'Yes
Wages-
$2000/mothly',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (138,'State Review of Eligibility Determination',44,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (161,'Wages to PI of 203$ monthly',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (205,'$, magi expenses of Tuition and fees of 45$. ',31,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (185,'In case change mode, race details and tribal information details are added as below:
On person details screen:
Race: American Indian or Alaskan Native
On Tribal information screen:
TribalAffiliation: Blood
TribalState: Indiana
EnrollmentNumber: 46678899
FedRecgTribe: YEs
TribeVerification: Hard Copy
FedRecgTribe:Today
On Program Request individual screen:
PRI_HealthCoverageCatChange: Managed Care Opt Out Form is Received (MANA)
PDAD_indianHealthServices: Yes
PDAD_indvRecIndHealthser : Yes
PDAD_VerificationNativeAmericanStatus: Hard Copy',46,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (236,'Ed pends with EDR size as 2 and TOA as SNAP.',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (118,'$145.50 - 2385.25 - 100 for father
$135.40  - Mother',21,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (311,'Wages/Salaries(500)',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (221,'Father - Wages - Monthly - $2931.50',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (188,'Last business day',48,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (233,'Yes - Activity type as Payment, date as today and indvs person id.',45,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (307,'Female,Male, In-Home, White,Spanish primary language.',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (235,'Pend',11,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (308,'Yes - Wages , Monthly 600$ for indv1 and Wages , Monthly 500$ for indv2',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (345,'Spouse, Parent',6,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (326,'Yes
Full Time Enrolled',8,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (65,'
AppointmentStatus-CANCEL
InterviewMethod - In Person
Coments - Automation
Submit
',59,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (320,'Alien Sponsor - Other - Non-Exempt - Biweekly - $498',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (17,'HCC',3,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (121,'$2385.25 for father
$135.40  - Mother',21,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (304,'In case change add Dividends income of 130% of Gross income standard per month',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (213,'siblings',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (282,'Eligible
Size -1
TOA- MA D',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (251,'Verify on FU summary for TANF and verify that FAILURE TO SIGN A PERSONAL RESPONSIBILITY AGREEMENT is displayed as the reason code for parent',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (325,'Adult1
Ethnicity-Unspecified',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (244,'Eligible :1
Assistance Type: MARP',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (353,'Completed',7,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (271,'No Change',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (338,'Spouse',6,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (41,'SNAP(Expedited)',3,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (132,'from Day 122 has an increase in earned income less than 133% FPL',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (346,'Type : Wages/Salaries
Pay Frequency : Monthly
Amount : 145.50$
Hours : 40
Verification : Hard Copy
',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (294,'Pending - 
Eligibility Notice for Health Coverage - Suspend
Verify Content - Si usted volverá a casa antes de la finalización del período de suspensión de 24 meses',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (284,'MRT - Denied
Denial Reason - DISABILITY NOT MET, CONDITION HAS BEEN RESOLVED',12,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (291,'Size - 1
TOA - MA 2- child - Suspend
',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (312,'Type of Assistance: MARP
Assistance group size: 1
Eligibility status: Eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (105,'Authorized',37,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (12,'TANF',3,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (156,'yes',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (184,'YEs',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (341,'U.S. Citizen',10,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (38,'Eligibility Notice for SNAP – Approval ',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (310,'Father(Today-11500)
Mother(Today-11000)
Child(Today-561)',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (343,'Type of Assistance : SNAP
AG size : 2
Status : Eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (22,'Yes',15,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (98,'YES',13,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (364,'High School Diploma/High School Equivalency Test',8,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (153,'income Wages monthly of 214.00$. ',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (139,'N/a',47,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (273,'Review',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (143,'SNAP No change,
Assistance size : 2',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (166,'Add person',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (262,'Yes- $100 to husband',18,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (61,'MASI Application',53,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (19,'Intake - MA Denied due to excess Income.
RTO - MA Eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (197,'Other - Non-Exempt of 200$ to husband',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (275,'Time Travel Date',48,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (349,'Participation Status :
Eligible Adult, Non-Participating Adult, Excluded Child',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (55,'SNAP/Cash Application',53,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (96,'Eligible
AU:4
Benefit Amount 646$',34,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (245,'English notices for IED100 V3 -  HIP Approval_Regular Plus Native American',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (149,'in home',9,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (103,'Program Compliance ',20,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (254,'In Home for all',9,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (62,'Manually Schedule',55,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (87,'TOA: MASP,
AG Size: 1,
Eligibility Status: Eligible,
Premium Amount: 20.00',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (44,'Last Business day w.r.t the run date',48,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (347,'Type : Wages
Pay Frequency : Monthly
Amount : 145.50$
Verification : Hard Copy
',31,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (222,'Father - Monthly - $2931.50',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (352,'Husband-wife ',6,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (180,'Husband',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (91,'Eligible
AU:1
MASI Assistance',34,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (94,'4.0',1,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (128,'CHILD FAILED TO COMPLY WITH SCHOOL ATTENDANCE REQUIREMENT',37,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (192,'Yes, using search criteria - case#, begin date as today and multiple appointments as Yes',57,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (194,'husband and wife',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (210,'utility exp for father of 40$',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (269,'Yes
Wages
$400/Monthly',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (196,'Yes, savings account of 50$, ',18,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (162,'MASP for PI eligible and TOA MA 2 for child eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (189,'Follow-up IMPACT',49,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (314,'Wages/Salaries(3700)',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (324,'Earned Income - $537.50
StandardDeductionAmount - $160
Shelter Costs - $535
NetIncomeLimit - $1354
NetIncomeTestResult - FAIL',37,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (32,'Husband, Wife',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (174,'Scheduling ',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (259,'Eligibility Notice for Health Coverage - Closure',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (81,'PI - SNAP eligible
Roomer - ineligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (319,'Alien - Blood Plasma/Bodily Fluids - Weekly - $125',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (328,'Yes, Tax Filer',15,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (9,'ED summary verification is missing in both intake and revert to open mode in this scenario.',46,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (66,'
AppointmentStatus-Scheduled
',59,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (76,'Type: Other on-the-job training,
Pay Frequency: Bi-Weekly,
Amount: 500$,
No. of hours: 30',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (313,'GrandFather (Today-23742)
 Grand Child (Today-5480)',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (195,'Yes, husband, type- roomer',16,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (90,'Type : SSO
Pay Frequency : Monthly
Amount : 600$ 
',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (144,'Notice of Dismissal ',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (177,'Eligible for SNAP with AU as 3',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (225,'Parent - Weekly - $289',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (330,'Yes
Tuition and fees
$445/Monthly',31,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (74,'Type: Checking Account,
GrossValue: 2040$',18,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (106,'Randulf Auto((Today-8401)',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (237,'Yes , eligible adult and eligible child. 
Non-Fin and Fin both Pass with missing verification as Pending.',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (52,'Male
In Household',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (278,'At an office',7,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (97,'Male, 70',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (267,'Homeless/Homeless Shelter',9,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (18,'Intake -
Type : Wages
Pay Frequency : Monthly
Amount : $3000
Revert To Open - 
Type : Wages
Pay Frequency : Monthly
Amount : $30',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (47,'Expedited SNAP',53,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (112,'$200(Wages)',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (298,'correspondence and Health Coverage - Suspend_notice IED090_V6 in English',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (54,'Assignable',50,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (67,'Male
Married
In Household',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (99,'Yes 
Case , 13200$
Resource transferred 59 months ago',16,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (95,'Husband, Wife,Husband Son, Wife Son',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (116,'Type of Assistance: MAA
Assistance group size: 
Eligibility Status: No change',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (232,'Intake - MA 9 , eligible .
1st Case change - MARB , eligible
2nd case change - MARP , eligible',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (10,'3.0',1,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (301,'HIP Approval notice is generated.
Interface sends LOW INCOME 19/20 YEAR OLD indicator in CDEE file as ''N''. ',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (367,'TANF : Eligible
',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (342,'Type : Wages/Salaries
Pay Frequency : Monthly
Amount : 400$
Hours : 30
Verification : Hard Copy
',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (13,'Intake -
Type : Other - Non-Exempt
Pay Frequency : Monthly
Amount : $10000
Revert to open -
Type : Other - Non-Exempt
Pay Frequency : Monthly
Amount : $100',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (359,'Notice of Dimissal',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (27,'Yes - Refused to sign PRA for mother , Child - School Attendance not met (PRA) for newborn child.',23,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (30,'Discrepancy : non-custodial parent compliance details entered for incorrect individual.',46,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (168,'father and child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (92,'Yes - Wages , Monthly 800$',26,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (77,'SNAP Eligible,
AG size : 2,
Benefit Amount: 233$',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (93,'Eligible
AU:1
MARS Assistance

In case change
Eligible
AU:1
MASP Assistance',34,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (199,'Snap eligible for 2 mm',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (203,'vehicle assets for parent of 100$, ',19,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (366,'In Case Change : Mother
Non-Compliance Type : Not abstaining from using illegal drugs or other substances (PRA)
 Program – Cash
Begin Date - current system date.',23,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (322,'SNAP - Eligible - AG size : 2 ',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (102,'Parent Auto(Today-23000)
Child Auto(Today-5200)
',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (141,'Wages, 200$',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (217,'Father - Wages - Monthly - $369',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (75,'Type: Car,
Fair Market Value: 4322$,
Amount Owed: 4123$',19,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (39,'No interview scheduled - SNAP or Cash Application, 
Task status : New',44,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (191,'In person',56,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (186,'Parent, child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (204,'earned income as other 319$, ',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (145,'Review,Revert to open',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (171,'eligible for MA 8 TOA. ',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (257,'CLOSURE - Moved to another Case',5,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (211,'MA z for child is eligible and MA l for parent is eligible. ',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (80,'Type : Roomer
Paid To : PI
No. of rooms in home : 4
No. of rooms occupied : 1
Does not purchase or prepare with the SNAP Primary Individual

',16,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (2,'Male
Single-Never Married
In the household',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (57,'Application without SNAP',49,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (152,'truck of VD_FairMarketValue 26753.00. ',19,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (101,'MA A should form with liability amount $0.00

Medicaid Notice Reasons screen and validate the notice reason ASSISTANCE GROUP IS INELIGIBLE DUE TO TRANSFER OF RESOURCES is displayed',34,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (108,'Benefit Period: Current Month
Type of Assistance: MA 15
Assistance group size: 1
Eligibility Status: Eligible

Benefit Period: Ongoing Month
Type of Assistance: MA15
Assistance group size: 1
Eligibility status: Closed',32,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (36,'Dental care - 25$ monthly',29,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (302,'IED090_V1 and IED089_V1 English notices.',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (163,'Wages to PI of 2050$ monthly',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (164,'verify TOA as MASP for PI eligible and TOA MA for child eligible ',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (200,'Eligibility Notice for SNAP - Approval',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (78,'Participation Status: Disqualified Adult, Eligible child, Eligible Adult',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (85,'Add Person:
Type: Wage/Salaries,
Pay Frequency: Monthly,
Amount: 2598$',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (277,'Scheduled',50,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (72,'Eligibility Notice for Health Coverage - HIP Denial',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (114,'Case change',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (43,'Marion Central Local Office',47,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (150,'Alien',10,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (56,'HCC, TANF',3,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (261,'InterviewType -Telephone
Interviewee - Husband',7,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (340,'Highest Grade : High School Diploma/High School Equivalency Test, Not Enrolled',8,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (327,'Yes
Type-Former Foster Care',13,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (238,'Yes - PENDING VERIFICATIONS FOR APPLICANTS/RECIPIENTS',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (40,'Male, gross income 50$',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (227,'Phone - Monthly - $80',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (317,'Sponsored Alien of',6,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (31,'2.0',1,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (230,'US Citizen',10,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (242,'Spanish notices for IED100 V5 -  HIP Approval_State Plan Plus Native American',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (264,'Adult1',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (127,'TANF eligible, AU:2
Amoutn decreased due to sanction - notice reason : CHILD FAILED TO COMPLY WITH SCHOOL ATTENDANCE REQUIREMENT',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (190,'Cancel',50,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (158,'Yes, type Boarder paid to PI , 199$ monthly',16,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (358,'AU 2',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (172,'validate DI1322: \"Closure action not allowed. Individual ''~'' in ''Foster Care''. ''Former Foster Care'' or ''Adoption Assistance'' and age less than 26 years ',67,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (115,'Type of Assistance: SNAP
Assistance group size: 2
Eligibility Status: No change',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (256,'Eligible
Size-1
TOA - MA10',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (120,'$145.50 for father
$135.40  - Mother',21,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (274,'PENDING VERIFICATIONS FOR APPLICANTS/RECIPIENTS',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (14,'Inake: TANF Denied
Revert to open: TANF Eligible, Assistance Group Size - 3',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (207,'Eligibility Notice for TANF – Approval',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (290,'Yes
Wages- $1000/monthly
',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (246,'parent, child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (265,'InterviewType -Telephone',7,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (281,'Yes
Tax filer',15,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (15,'ED summary verification is missing in intake mode in this scenario.',46,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (84,'Intake,
Case Change,
Add Person',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (280,'Yes
Criteria - Receives or has been certified as eligible for SS Disability or blindness benefits

Type - SSI
Status - Denied
Reason - Change in Social Security''s Definition of Disability Criteria
Verf- MRT
MRT review - Yes',12,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (33,'Intake, Case change',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (70,'Typs: Pension,
Pay Frequency: Monthly,
Amount: 3000$',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (165,'parent , spouse and child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (179,'Na',65,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (83,'Mother, Child, and a new born in Add Person mode',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (107,'AGI(Wages)',21,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (142,'na',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (125,'In home',9,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (356,'Wages - monthly , $400',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (21,'Intake',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (316,'Alien and Alien Sponsor',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (117,'father (Today-11718)
Mother (Today-10987) 
 Child (Today-2587)',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (306,'INCOME IS MORE THAN THE 130% GROSS INCOME STANDARD'' should be observed',39,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (223,'Mother/Father - MASP - Eligible 
Son - MA F',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (224,'Car',19,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (249,'Yes, type- Refused to sign PRA for HCC',23,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (292,'Yes
Participation Status -
1- Eligible Child
2- Non-Participating Adult',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (334,'Yes-
Reason- Abandoned/Death',43,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (368,'Intake - AG Size - 2
CC : AG Size - 2 , Premium Amount - 139 
Mother - Ineligible for TANF , Reason - FAILURE TO COMPLY WITH DRUG/SUBSTANCE ABUSE REQUIREMENTS
',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (357,'Intake: Eligible, AU 2 ,SNAP assistance.

Case change: No change status , AU 2 , SNAP assistance',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (270,'Eligible
Size-2
TOA- SNAP',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (1,'1.0',1,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (5,'In Home',9,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (215,'MARP- eligible for 1 member and pend for one member due to missing verification on date of irth',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (136,'Yes, 2000$ in intake and updated to 90$ in add program mode',24,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (113,'Type of Assistance: MARP
Assistance group size: 1
Eligibility status: Eligible
Type of Assistance: SNAP
Assistance group size: 2
Eligibility Status: Eligible',33,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (154,'Snap deneid,due to VALUE OF RESOURCES EXCEEDS PROGRAM ELIGIBILITY STANDARD',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (79,'2 Adult-male and female
Not related to each other',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (130,'TMA Indicator is set to "No" for an individual who was Eligible for MARP and has the low-income indicator set for 3 of the last 6 months.',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (360,'Semi annual review due date and recert review due dates are verified. Batches are also run via the script.',46,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (208,' livestock of 50$. ',22,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (212,'Eligibility Notice for Health Coverage - Approval',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (193,'Yes - ¿	Appointment status is edited via the edit flow by verifying status with “Scheduled” and “Cancel” from the test data.',58,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (258,'MA10
ASSISTANCE GROUP TRANSFERRED TO ANOTHER CASE (NO NOTICE)',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (241,'Eligible :1
Assistance Type: MASP',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (287,'InterviewType -Telephone
Interviewee - Parent',7,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (355,'US residents',10,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (46,'Decline',50,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (243,'Yes - Wages , Monthly 1200$',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (289,'Both are Tax Filer',15,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (323,'Non Fin - Pass
Resource - Pass
Income - Pass
Missing Verification - Pass
Participation Status for both - Eligible Adult.',36,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (252,'Telephone',7,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (339,'Interview Type : Telephone',7,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (350,'Husband-wife',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (250,'hh is eligible for TANF',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (362,'Intake,
Case Change',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (351,'Snap',5,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (248,'no',11,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (73,'Mother-Alien, Child-Alien, Mother''s Sister-US Citizen',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (71,'MARP - Denied',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (4,'Intake, Revert to open',4,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (109,'Father(Today-24106) Child(Today-11322)',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (285,'Closed
Size-0
TOA - MA D
Reason- DISABILITY NOT MET; CONDITION HAS BEEN RESOLVED',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (296,'Father-Dividends- monthly-$1000',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (25,'a. T0015
b. T0039',44,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (219,'Mother/Father - MASP - Eligible 
Son/Daughter - MA2',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (332,'Yes
Type - Non - Eligibility
Category - Adult Mental Health and Habilitation',41,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (201,'No interview scheduled - SNAP or Cash Application ',44,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (231,'Yes - Wages monthly $1200 with description as "automation"',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (63,'In Person',56,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (167,'YES for parent',68,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (123,'$100.50 for father
$135.40  - Mother',21,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (288,'Parent - In Home 
Child - Incarcerated',9,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (45,'Expedited SNAP without MA',49,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (300,'MARP - fully Eligible AG forms with $1 PAC for 19 yr. old.',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (64,'Edit Scheduled appointment',58,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (183,'HCC eligible in intake. In case change, category is changed to MANA and case is MANA eligible.',35,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (299,' LOW INCOME 19/20 YEAR OLD switch is not marked Yes.',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (309,'Spanish notices for  Eligibility Notice for Health Coverage - HIP Conditional Approval',40,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (49,'Auto',55,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (16,'Gender - Male
Single Never Married',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (131,'from Day 61 has an increase in earned income less than 133% FPL',25,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (266,'11th Grade, Full Time',8,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (89,'No',11,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (216,'Mother , Father, Son , Daughter (step-sibling)',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (182,'Yes - self employment wages income of $1080 monthly',27,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (3,'SNAP',3,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (303,'2 Individuals less than 65 years of age;
In Household',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (286,'Parent and Child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (160,'parent and child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (24,'Educational
Amt: $100/month',34,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (335,'Discrepancy : In the same day the notice cannot move to view history. Task name that is being validated is not mentioned.  ',46,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (134,'Mother, Child',2,'Y');
Insert into KEYWORD (ID,KEYWORD_NAME,CATEGORY_ID,ACTIVE_SW) values (268,'Eligible for SNAP
-Premium Amount as 194',35,'Y');
REM INSERTING into SCENARIOS
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (1,'DC - Revert To Open','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (2,'DC - Revert To Open TANF','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (3,'DC - Revert To Open MA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (4,'DC - SNAP - 1 Household','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (5,'DC - TANF - 3 Household','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (6,'SMK - SNAP 2 HH','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (7,'SCH_TC_009_AutoApptExpSNAPWithoutMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (8,'SCH_TC_006_AutoApptWithSNAP','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (9,'SCH_TC_007_AutoApptWithoutSNAP','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (10,'SCH_TC_010_AutoApptResAssessment','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (11,'SCH_TC_002_ARManuallyScheduleAppt','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (12,'SCH_TC_001_ScheduleManualAppt','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (13,'R56_TC005_WorkforceAttachment','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (14,'INT - SNAP - 17 3 Household Aliens Eligible','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (15,'R4C_SNAP_TC011','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (16,'R6_TC061_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (17,'INT_HCHIP_TC002_MASI','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (18,'R7_TC028_CR596214_015','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (19,'R4C_SNAP_TC025','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (20,'MO_TC006_143686','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (21,'Reason Codes - EL0318','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (22,'R7_TC007_FormerFosterChildren','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (23,'R7_TC027_CR596214_008','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (24,'R7_TC027_CR596214_008','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (25,'R7_TC027_CR596214_008','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (26,'R6_TC053_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (27,'R6_TC053_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (28,'R6_TC053_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (29,'R6_TC053_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (30,'R6_TC053_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (31,'R6_TC053_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (32,'Reason Codes - EL0308','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (33,'R6_TC049_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (34,'R6_TC049_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (35,'R6_TC049_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (36,'R6_TC049_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (37,'R6_TC036_TaskTrigger_Day0,R6_TC036_TaskTrigger_Day1','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (38,'AR_TC_001_ApplicationRegistrationScreens_1','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (39,'AR_TC_001_ApplicationRegistrationScreens_2','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (40,'AR_TC_001_ApplicationRegistrationScreens_3','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (41,'R7_017_RTOD_CR570188_day0','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (42,'R7_017_RTOD_CR570188_semi_annual','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (43,'R7_017_RTOD_CR570188_annual review','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (44,'INT - SNAP - 12 Parolle Ineligible Denied','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (45,'R4C_SNAP_TC001','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (46,'R6_TC057_TMA_Day0','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (47,'R6_TC057_TMA_Day1','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (48,'R6_TC057_TMA_Day122','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (49,'R6_TC057_TMA_Day0','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (50,'R7_TC005_FormerFosterChildren','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (51,'Scheduling - Automatic Appt with SNAP','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (52,'R4C_SNAP_TC035','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (53,'INT_HCHIP_TC003_MANA_Day00_01','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (54,'Scheduling - Follow Up Impact Appointment','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (55,'SMK - SNAP 2 HH','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (56,'SMK - TANF 2 HH','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (57,'SMK - MA 2 HH','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (58,'INT - HC & HIP - 0045 MASP & MA 2','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (59,'R6_TC056_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (60,'R6_TC056_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (61,'R6_TC056_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (62,'INT - SNAP - 6 Alien-LAPR Eligible','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (63,'MO_TC001_142965','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (64,'INT_SNAP_TC_058','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (65,'R56_TC002_CO_IED100_V5S','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (66,'R56_TC001_CO_IED100_V3E','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (67,'RC_TC014_EL1003','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (68,'R6_TC034_AllowWorkerClosure','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (69,'R6_TC034_AllowWorkerClosure','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (70,'R6_TC034_AllowWorkerClosure','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (71,'INT - SNAP - 59 Expedited','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (72,'R4C_SNAP_TC041','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (73,'R7_TC024_CR596214_RedetE2E','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (74,'R7_TC024_CR596214_RedetE2E','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (75,'R7_TC024_CR596214_RedetE2E','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (76,'R56_TC012_MRTDeniedClosed','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (77,'R56_TC012_MRTDeniedClosed','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (78,'R6_TC027_ExtendSuspensionPeriod','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (79,'R6_TC027_ExtendSuspensionPeriod','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (80,'R6_TC028_ExtendSuspensionPeriod','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (81,'R6_TC035_DiscIndLowIncome','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (82,'R6_TC026_ExtendSuspPeriod','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (83,'RC_TC018_EL3007','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (84,'R56_TC004_CO_IED095_V14S','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (85,'MO_TC009_144778','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (86,'R4C_401830 - MAI Intake English','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (87,'INT - SNAP - 29 Alien Sponsor','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (88,'CO_TC_002_ViewHistory','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (89,'R7_007_RTOD_CR570188','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (90,'R6_TC055_TMA','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (91,'R7_012_RTOD_CR570188','Y',null,null);
Insert into SCENARIOS (ID,SCENARIO_NAME,ACTIVE_SW,REL_PATH,FILE_NAME) values (92,'Reason Codes - EL1010','Y',null,null);
REM INSERTING into SCENARIO_KEYWORD
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (1,1,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (2,1,2,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (3,1,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (4,1,4,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (5,1,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (6,1,6,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (7,1,7,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (8,1,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (9,1,9,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (10,2,4,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (11,2,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (12,2,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (13,2,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (14,2,11,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (15,2,12,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (16,2,13,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (17,2,14,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (18,2,15,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (19,3,16,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (20,3,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (21,3,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (22,3,18,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (23,3,19,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (24,3,4,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (25,3,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (26,3,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (27,3,9,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (28,4,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (29,4,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (30,4,20,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (31,4,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (32,4,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (33,4,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (34,4,23,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (35,4,24,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (36,4,25,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (37,5,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (38,5,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (39,5,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (40,5,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (41,5,26,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (42,5,27,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (43,5,12,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (44,5,28,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (45,5,29,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (46,5,30,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (47,6,32,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (48,6,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (49,6,34,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (50,6,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (51,6,35,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (52,6,36,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (53,6,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (54,6,37,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (55,6,38,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (56,6,39,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (57,6,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (58,6,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (59,7,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (60,7,40,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (61,7,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (62,7,41,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (63,7,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (64,7,43,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (65,7,44,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (66,7,45,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (67,7,46,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (68,7,47,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (69,7,48,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (70,7,49,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (71,7,50,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (72,7,51,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (73,8,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (74,8,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (75,8,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (76,8,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (77,8,43,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (78,8,44,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (79,8,48,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (80,8,49,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (81,8,50,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (82,8,51,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (83,8,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (84,8,53,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (85,8,54,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (86,8,55,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (87,9,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (88,9,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (89,9,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (90,9,43,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (91,9,44,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (92,9,46,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (93,9,48,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (94,9,49,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (95,9,50,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (96,9,51,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (97,9,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (98,9,55,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (99,9,56,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (100,9,57,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (101,10,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (102,10,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (103,10,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (104,10,43,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (105,10,44,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (106,10,48,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (107,10,49,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (108,10,50,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (109,10,51,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (110,10,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (111,10,54,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (112,10,58,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (113,10,59,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (114,11,64,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (115,11,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (116,11,65,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (117,11,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (118,11,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (119,11,43,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (120,11,44,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (121,11,48,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (122,11,50,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (123,11,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (124,11,54,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (125,11,57,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (126,11,60,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (127,11,61,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (128,11,62,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (129,11,63,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (130,12,64,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (131,12,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (132,12,66,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (133,12,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (134,12,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (135,12,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (136,12,43,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (137,12,44,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (138,12,48,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (139,12,50,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (140,12,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (141,12,53,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (142,12,54,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (143,12,55,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (144,12,62,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (145,12,63,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (146,13,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (147,13,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (148,13,67,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (149,13,68,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (150,13,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (151,13,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (152,13,69,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (153,13,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (154,13,70,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (155,13,71,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (156,13,72,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (157,14,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (158,14,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (159,14,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (160,14,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (161,14,73,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (162,14,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (163,14,74,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (164,14,75,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (165,14,76,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (166,14,77,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (167,14,78,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (168,15,80,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (169,15,81,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (170,15,82,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (171,15,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (172,15,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (173,15,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (174,15,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (175,15,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (176,15,79,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (177,16,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (178,16,83,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (179,16,84,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (180,16,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (181,16,85,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (182,16,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (183,16,86,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (184,16,87,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (185,16,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (186,17,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (187,17,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (188,17,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (189,17,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (190,17,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (191,17,88,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (192,17,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (193,17,90,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (194,17,91,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (195,18,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (196,18,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (197,18,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (198,18,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (199,18,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (200,18,88,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (201,18,92,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (202,18,93,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (203,19,96,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (204,19,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (205,19,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (206,19,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (207,19,94,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (208,19,95,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (209,20,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (210,20,97,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (211,20,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (212,20,98,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (213,20,99,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (214,20,100,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (215,20,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (216,20,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (217,20,101,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (218,21,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (219,21,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (220,21,102,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (221,21,103,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (222,21,104,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (223,21,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (224,21,12,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (225,21,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (226,22,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (227,22,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (228,22,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (229,22,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (230,22,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (231,22,106,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (232,22,107,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (233,22,108,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (234,23,112,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (235,23,113,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (236,23,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (237,23,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (238,23,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (239,23,109,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (240,23,110,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (241,23,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (242,23,111,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (243,24,112,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (244,24,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (245,24,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (246,24,115,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (247,24,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (248,24,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (249,24,109,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (250,24,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (251,24,111,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (252,25,112,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (253,25,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (254,25,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (255,25,116,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (256,25,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (257,25,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (258,25,109,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (259,25,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (260,25,111,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (261,26,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (262,26,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (263,26,117,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (264,26,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (265,26,118,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (266,26,119,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (267,26,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (268,26,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (269,27,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (270,27,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (271,27,117,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (272,27,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (273,27,119,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (274,27,120,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (275,27,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (276,27,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (277,28,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (278,28,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (279,28,117,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (280,28,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (281,28,120,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (282,28,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (283,28,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (284,29,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (285,29,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (286,29,117,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (287,29,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (288,29,121,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (289,29,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (290,29,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (291,29,122,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (292,30,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (293,30,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (294,30,117,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (295,30,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (296,30,120,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (297,30,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (298,30,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (299,31,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (300,31,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (301,31,117,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (302,31,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (303,31,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (304,31,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (305,31,123,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (306,32,128,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (307,32,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (308,32,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (309,32,124,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (310,32,12,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (311,32,125,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (312,32,126,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (313,32,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (314,32,127,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (315,33,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (316,33,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (317,33,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (318,33,129,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (319,33,130,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (320,33,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (321,33,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (322,33,125,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (323,34,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (324,34,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (325,34,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (326,34,130,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (327,34,131,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (328,34,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (329,34,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (330,34,125,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (331,35,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (332,35,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (333,35,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (334,35,130,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (335,35,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (336,35,132,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (337,35,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (338,35,125,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (339,36,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (340,36,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (341,36,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (342,36,130,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (343,36,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (344,36,133,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (345,36,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (346,36,125,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (347,37,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (348,37,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (349,37,134,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (350,37,135,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (351,37,136,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (352,37,137,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (353,37,138,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (354,37,139,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (355,37,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (356,38,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (357,38,88,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (358,38,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (359,38,58,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (360,38,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (361,38,139,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (362,39,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (363,39,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (364,39,58,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (365,39,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (366,39,139,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (367,39,140,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (368,40,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (369,40,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (370,40,58,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (371,40,42,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (372,40,139,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (373,40,140,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (374,41,32,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (375,41,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (376,41,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (377,41,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (378,41,37,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (379,41,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (380,41,141,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (381,41,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (382,41,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (383,42,32,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (384,42,144,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (385,42,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (386,42,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (387,42,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (388,42,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (389,42,141,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (390,42,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (391,42,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (392,42,143,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (393,43,32,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (394,43,145,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (395,43,146,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (396,43,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (397,43,147,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (398,43,148,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (399,43,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (400,43,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (401,43,141,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (402,43,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (403,43,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (404,44,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (405,44,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (406,44,140,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (407,44,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (408,44,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (409,44,149,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (410,44,150,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (411,44,151,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (412,44,152,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (413,44,153,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (414,44,154,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (415,44,155,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (416,44,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (417,45,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (418,45,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (419,45,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (420,45,37,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (421,45,157,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (422,45,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (423,45,158,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (424,45,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (425,45,159,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (426,46,160,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (427,46,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (428,46,161,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (429,46,162,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (430,46,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (431,46,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (432,46,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (433,46,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (434,46,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (435,47,160,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (436,47,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (437,47,161,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (438,47,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (439,47,162,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (440,47,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (441,47,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (442,47,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (443,47,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (444,48,160,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (445,48,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (446,48,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (447,48,163,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (448,48,164,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (449,48,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (450,48,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (451,48,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (452,48,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (453,49,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (454,49,162,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (455,49,163,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (456,49,165,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (457,49,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (458,49,166,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (459,49,167,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (460,49,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (461,49,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (462,49,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (463,50,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (464,50,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (465,50,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (466,50,168,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (467,50,169,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (468,50,170,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (469,50,171,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (470,50,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (471,50,172,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (472,50,173,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (473,50,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (474,50,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (475,51,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (476,51,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (477,51,52,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (478,51,174,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (479,51,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (480,52,176,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (481,52,177,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (482,52,178,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (483,52,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (484,52,179,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (485,52,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (486,52,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (487,52,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (488,52,94,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (489,52,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (490,52,175,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (491,53,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (492,53,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (493,53,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (494,53,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (495,53,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (496,53,179,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (497,53,180,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (498,53,181,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (499,53,182,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (500,53,183,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (501,53,184,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (502,53,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (503,53,185,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (504,54,192,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (505,54,193,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (506,54,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (507,54,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (508,54,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (509,54,179,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (510,54,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (511,54,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (512,54,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (513,54,186,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (514,54,187,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (515,54,188,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (516,54,189,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (517,54,190,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (518,54,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (519,54,191,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (520,55,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (521,55,194,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (522,55,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (523,55,195,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (524,55,196,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (525,55,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (526,55,197,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (527,55,198,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (528,55,199,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (529,55,200,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (530,55,201,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (531,55,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (532,55,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (533,55,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (534,56,160,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (535,56,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (536,56,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (537,56,202,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (538,56,203,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (539,56,12,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (540,56,204,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (541,56,205,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (542,56,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (543,56,206,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (544,56,207,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (545,56,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (546,56,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (547,57,160,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (548,57,208,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (549,57,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (550,57,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (551,57,209,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (552,57,210,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (553,57,211,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (554,57,212,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (555,57,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (556,57,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (557,57,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (558,57,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (559,58,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (560,58,213,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (561,58,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (562,58,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (563,58,214,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (564,58,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (565,58,215,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (566,58,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (567,58,142,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (568,58,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (569,59,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (570,59,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (571,59,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (572,59,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (573,59,216,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (574,59,217,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (575,59,218,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (576,59,219,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (577,59,220,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (578,59,94,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (579,60,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (580,60,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (581,60,216,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (582,60,219,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (583,60,94,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (584,61,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (585,61,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (586,61,216,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (587,61,221,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (588,61,94,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (589,61,222,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (590,61,223,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (591,62,224,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (592,62,225,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (593,62,226,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (594,62,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (595,62,227,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (596,62,228,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (597,62,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (598,62,200,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (599,62,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (600,62,150,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (601,62,187,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (602,62,124,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (603,62,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (604,63,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (605,63,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (606,63,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (607,63,229,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (608,63,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (609,63,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (610,63,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (611,63,231,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (612,63,232,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (613,63,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (614,63,233,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (615,64,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (616,64,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (617,64,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (618,64,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (619,64,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (620,64,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (621,64,234,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (622,64,235,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (623,64,236,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (624,64,237,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (625,64,238,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (626,64,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (627,65,240,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (628,65,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (629,65,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (630,65,241,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (631,65,242,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (632,65,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (633,65,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (634,65,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (635,65,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (636,65,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (637,65,239,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (638,66,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (639,66,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (640,66,243,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (641,66,244,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (642,66,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (643,66,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (644,66,245,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (645,66,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (646,66,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (647,66,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (648,66,239,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (649,67,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (650,67,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (651,67,12,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (652,67,207,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (653,67,246,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (654,67,247,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (655,67,248,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (656,67,249,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (657,67,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (658,67,250,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (659,67,251,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (660,67,156,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (661,67,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (662,68,256,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (663,68,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (664,68,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (665,68,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (666,68,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (667,68,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (668,68,124,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (669,68,252,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (670,68,253,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (671,68,254,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (672,68,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (673,68,255,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (674,69,256,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (675,69,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (676,69,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (677,69,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (678,69,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (679,69,124,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (680,69,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (681,70,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (682,70,257,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (683,70,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (684,70,258,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (685,70,259,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (686,70,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (687,70,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (688,70,124,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (689,70,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (690,71,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (691,71,260,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (692,71,261,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (693,71,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (694,71,262,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (695,71,263,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (696,71,200,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (697,71,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (698,71,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (699,71,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (700,71,253,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (701,71,254,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (702,71,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (703,72,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (704,72,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (705,72,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (706,72,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (707,72,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (708,72,264,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (709,72,265,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (710,72,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (711,72,266,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (712,72,267,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (713,72,268,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (714,73,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (715,73,260,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (716,73,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (717,73,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (718,73,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (719,73,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (720,73,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (721,73,252,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (722,73,253,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (723,73,269,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (724,73,270,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (725,73,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (726,74,272,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (727,74,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (728,74,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (729,74,260,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (730,74,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (731,74,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (732,74,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (733,74,271,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (734,75,273,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (735,75,274,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (736,75,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (737,75,275,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (738,75,260,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (739,75,276,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (740,75,277,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (741,75,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (742,75,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (743,75,43,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (744,75,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (745,75,271,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (746,76,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (747,76,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (748,76,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (749,76,264,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (750,76,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (751,76,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (752,76,278,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (753,76,279,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (754,76,280,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (755,76,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (756,76,281,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (757,76,282,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (758,76,283,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (759,77,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (760,77,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (761,77,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (762,77,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (763,77,264,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (764,77,284,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (765,77,285,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (766,78,288,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (767,78,289,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (768,78,290,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (769,78,291,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (770,78,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (771,78,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (772,78,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (773,78,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (774,78,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (775,78,283,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (776,78,253,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (777,78,286,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (778,78,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (779,78,287,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (780,79,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (781,79,114,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (782,79,291,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (783,79,292,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (784,79,293,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (785,79,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (786,79,294,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (787,79,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (788,79,286,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (789,79,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (790,80,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (791,80,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (792,80,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (793,80,295,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (794,80,296,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (795,80,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (796,80,297,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (797,80,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (798,80,58,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (799,80,298,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (800,81,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (801,81,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (802,81,179,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (803,81,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (804,81,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (805,81,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (806,81,295,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (807,81,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (808,81,299,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (809,81,300,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (810,81,301,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (811,82,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (812,82,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (813,82,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (814,82,295,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (815,82,296,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (816,82,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (817,82,297,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (818,82,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (819,82,58,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (820,82,301,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (821,82,302,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (822,83,304,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (823,83,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (824,83,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (825,83,305,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (826,83,306,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (827,83,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (828,83,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (829,83,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (830,83,8,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (831,83,303,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (832,84,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (833,84,307,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (834,84,308,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (835,84,244,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (836,84,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (837,84,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (838,84,309,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (839,84,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (840,84,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (841,84,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (842,84,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (843,85,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (844,85,84,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (845,85,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (846,85,310,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (847,85,311,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (848,85,312,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (849,85,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (850,85,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (851,86,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (852,86,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (853,86,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (854,86,311,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (855,86,313,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (856,86,105,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (857,86,314,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (858,86,315,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (859,86,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (860,87,320,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (861,87,321,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (862,87,322,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (863,87,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (864,87,323,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (865,87,324,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (866,87,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (867,87,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (868,87,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (869,87,150,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (870,87,316,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (871,87,317,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (872,87,318,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (873,87,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (874,87,319,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (875,88,1,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (876,88,325,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (877,88,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (878,88,326,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (879,88,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (880,88,327,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (881,88,328,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (882,88,329,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (883,88,330,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (884,88,331,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (885,88,332,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (886,88,333,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (887,88,334,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (888,88,335,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (889,88,336,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (890,88,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (891,88,21,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (892,88,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (893,88,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (894,88,252,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (895,89,337,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (896,89,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (897,89,338,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (898,89,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (899,89,339,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (900,89,340,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (901,89,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (902,89,341,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (903,89,342,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (904,89,343,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (905,89,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (906,90,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (907,90,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (908,90,10,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (909,90,17,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (910,90,339,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (911,90,340,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (912,90,341,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (913,90,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (914,90,344,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (915,90,345,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (916,90,346,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (917,90,347,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (918,90,348,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (919,90,349,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (920,91,352,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (921,91,33,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (922,91,353,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (923,91,354,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (924,91,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (925,91,355,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (926,91,356,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (927,91,357,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (928,91,358,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (929,91,359,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (930,91,360,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (931,91,22,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (932,91,89,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (933,91,125,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (934,91,350,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (935,91,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (936,91,351,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (937,92,368,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (938,92,3,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (939,92,5,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (940,92,230,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (941,92,361,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (942,92,362,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (943,92,363,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (944,92,364,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (945,92,365,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (946,92,366,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (947,92,31,'Y');
Insert into SCENARIO_KEYWORD (SCENARIO_KEYWORD_ID,SCENARIO_ID,KEYWORD_ID,ACTIVE_SW) values (948,92,367,'Y');
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "CATEGORY" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "CATEGORY" MODIFY ("CATEGORY_DESC" NOT NULL ENABLE);
 
  ALTER TABLE "CATEGORY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KEYWORD
--------------------------------------------------------

  ALTER TABLE "KEYWORD" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "KEYWORD" MODIFY ("KEYWORD_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "KEYWORD" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCENARIOS
--------------------------------------------------------

  ALTER TABLE "SCENARIOS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCENARIOS" MODIFY ("SCENARIO_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCENARIOS" MODIFY ("SCENARIO_DESC" NOT NULL ENABLE);
 
  ALTER TABLE "SCENARIOS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCENARIO_KEYWORD
--------------------------------------------------------

  ALTER TABLE "SCENARIO_KEYWORD" MODIFY ("SCENARIO_KEYWORD_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCENARIO_KEYWORD" MODIFY ("SCENARIO_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCENARIO_KEYWORD" MODIFY ("KEYWORD_ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCENARIO_KEYWORD" ADD PRIMARY KEY ("SCENARIO_KEYWORD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_IE_WP_APP_NG2_ONLINE_SDX"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KEYWORD
--------------------------------------------------------

  ALTER TABLE "KEYWORD" ADD FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "CATEGORY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCENARIO_KEYWORD
--------------------------------------------------------

  ALTER TABLE "SCENARIO_KEYWORD" ADD FOREIGN KEY ("SCENARIO_ID")
	  REFERENCES "SCENARIOS" ("ID") ENABLE;
