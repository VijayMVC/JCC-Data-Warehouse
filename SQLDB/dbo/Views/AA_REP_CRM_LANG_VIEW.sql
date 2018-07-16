﻿CREATE VIEW AA_REP_CRM_LANG_VIEW
/*
** Written     :  20/03/2006 RV
** Last Amended:  21/03/2006 RV, 06/04/2006 RV, 19/07/2006 RV, 24/10/11 NC
**
** Used by     :  Campaign Detailed Report.rpt
**                Campaign Records Report.rpt
**                Closed Estimates Report.rpt
**                My Contacts Report.rpt
**                My Records Report.rpt
**                Pipeline Report.rpt
**                Tasks Report.rpt
**                Customer Contact List.rpt
*/
AS

SELECT

LANG_CRM.LANGCODE_CRM,     --ENGLISH language link
LANG_CRM.ALLOCATED_DEALER, --Allocated Dealer
LANG_CRM.CU_USER_CHAR1,    --Industry Type
LANG_CRM.CU_USER_CHAR2,    --Customer Type
LANG_CRM.CU_USER_CHAR3,    --Agent
LANG_CRM.CU_USER_CHAR4,    --Current Product
LANG_CRM.CU_USER_CHAR5,    --Market Sector
LANG_CRM.CU_USER_CHAR6,    --Prospect Char 6
LANG_CRM.CU_USER_CHAR7,    --Prospect Char 7
LANG_CRM.CU_USER_CHAR8,    --Prospect Char 8
LANG_CRM.CU_USER_CHAR9,    --Prospect Char 9
LANG_CRM.CU_USER_CHAR10,   --Prospect Char 10
LANG_CRM.CU_USER_CHAR11,   --Prospect Char 11
LANG_CRM.CU_USER_CHAR12,   --Prospect Char 12
LANG_CRM.CU_USER_CHAR13,   --Prospect Char 13
LANG_CRM.CU_USER_CHAR14,   --Prospect Char 14
LANG_CRM.CU_USER_DATE1,    --Company Next Action
LANG_CRM.CU_USER_DATE2,    --Prospect Date 2
LANG_CRM.CU_USER_DATE3,    --Prospect Date 3
LANG_CRM.CU_USER_DATE4,    --Prospect Date 4
LANG_CRM.CU_USER_DATE5,    --Prospect Date 5
LANG_CRM.CU_USER_DATE6,    --Prospect Date 6
LANG_CRM.CU_USER_DATE7,    --Prospect Date 7
LANG_CRM.CU_USER_NUM1,     --Prospect Number 1
LANG_CRM.CU_USER_NUM2,     --Prospect Number 2
LANG_CRM.CU_USER_NUM3,     --Prospect Number 3
LANG_CRM.CU_USER_NUM4,     --Prospect Number 4
LANG_CRM.CAMPAIGN,      --Campaign
LANG_CRM.DROP_DATE,     --Drop Date
LANG_CRM.PIPELINE,      --Pipeline
LANG_CRM.TASK_ACTION_TYPE, --Task Action Type
LANG_CRM.TASK_ACTION_DATE, --Task Action Date
LANG_CRM.TASK_ACTION_USER, --Task Action User
LANG_CRM.TASK_STATUS,      --Task Status
LANG_CRM.TASK_DATE,     --Task Date
LANG_CRM.COMMITTED_SALES_VALUE,  --Committed Sales Value
LANG_CRM.ACTUAL_SALES_VALUE,  --Actual Sales Value
LANG_CRM.CAMPAIGN_STAGE,   --Campaign Stage
LANG_CRM.COST_OF_CAMPAIGN, --Cost Of Campaign
LANG_CRM.AD_USER_CHAR1,    --Next Action
LANG_CRM.AD_USER_CHAR2,    --Status
LANG_CRM.AD_USER_CHAR3,    --Salesman
LANG_CRM.AD_USER_CHAR4,    --Source
LANG_CRM.AD_USER_CHAR5,    --Opportunity Type
LANG_CRM.AD_USER_CHAR6,    --Sales Process
LANG_CRM.AD_USER_CHAR7,    --Sales Stage
LANG_CRM.AD_USER_CHAR8,    --Contact Char 8
LANG_CRM.AD_USER_CHAR9,    --Contact Char 9
LANG_CRM.AD_USER_CHAR10,   --Contact Char 10
LANG_CRM.AD_USER_DATE1,    --Next Action Date
LANG_CRM.AD_USER_DATE2,    --Contact Date 2
LANG_CRM.AD_USER_DATE3,    --Contact Date 3
LANG_CRM.AD_USER_DATE4,    --Contact Date 4
LANG_CRM.AD_USER_NUM1,     --Contact Number 1
LANG_CRM.AD_USER_NUM2,     --Contact Number 2
LANG_CRM.AD_USER_NUM3,     --Contact Number 3
LANG_CRM.AD_USER_TIME1,    --Time Edited
LANG_CRM.AD_USER_FLAG1,    --Active?
LANG_CRM.AD_USER_FLAG2,    --Decision Maker?
LANG_CRM.AD_USER_FLAG3,    --Budget Holder?
LANG_CRM.AD_USER_FLAG4,    --Contact Flag 4
LANG_CRM.AD_USER_FLAG5,    --Contact Flag 5
LANG_CRM.DO_NOT_FAX,    --Do Not Fax

LANG_DEF1.CUSTOMER_CODE,   --Code
LANG_DEF1.PHONE,     --Phone
LANG_DEF1.TEL_HOME,     --Home
LANG_DEF1.TEL_MOBILE,      --Mobile
LANG_DEF1.FAX,       --Fax
LANG_DEF1.EMAIL,     --E-mail
LANG_DEF1.ANY_CURRENCY,    --Any Currency
LANG_DEF1.ENTERED_BY,      --Entered By
LANG_DEF1.TOTAL,     --Total
LANG_DEF1.LAST_CHANGED,    --Last Changed
LANG_DEF1.TITLE,     --Title
LANG_DEF1.INITIAL_TEXT,    --Initials
LANG_DEF1.SURNAME,      --Surname
LANG_DEF1.FIRST_NAME,      --First Name
LANG_DEF1.SALUTE,    --Salute
LANG_DEF1.JOB_TITLE,    --Job Title
LANG_DEF1.RECALL,    --Recall
LANG_DEF1.DATE_TEXT,    --Date

LANG_DEF2.CURRENCY_TXT,    --Curency
LANG_DEF2.DATE_ENTERED,    --Date Entered
LANG_DEF2.VALUE,     --Value

LANG_DEF6.ORDER_NO,     --Order No.
LANG_DEF6.PROBABILITY,     --Probability

LANG_DEF7.ESTIMATE,     --Estimate
LANG_DEF7.COUNT_TEXT,      --Count

LANG_DEF11.TEL_EXT,     --Ext.

LANG_DEF12.INTERNET_TEXT,  --Internet

LANG_DEF20.PROS_USR_F19_DATE, --Date Edited
LANG_DEF20.PROS_USR_F13_CHAR4,   --User Created
LANG_DEF20.PROS_USR_F14_CHAR4,   --User Edited
LANG_DEF20.ALLOCATED_DATE, --Allocated Date

LANG_USERFIELDS.SL_ACC_USER1, --User Sort 1
LANG_USERFIELDS.SL_ACC_USER2, --User Sort 2
LANG_USERFIELDS.SL_ACC_USER3, --User Sort 3

LANG_USERFIELDS2.SL_ACC_SORTDEF,--Sort Key

LANG_REPORTS_R.TOTALFOR_REP,  --Total For

LANG_REPORTS_R2.STATUS,    --Status

LANG_REPORTS_R3.PROSPECT_REP, --Prospect
LANG_REPORTS_R3.ALLOCATED_USER,  --Allocated User

LANG_REPORTS_R4.CUSTOMER_REP, --Customer
LANG_REPORTS_R4.CONTACT_REP,  --Contact
LANG_REPORTS_R4.DAYS_REP,  --Days
LANG_REPORTS_R4.OUTSTANDING_REP,--Outstanding
LANG_REPORTS_R4.DESCRIPTION_REP,--Description
LANG_REPORTS_R4.CST_MEM_RECORD_REP, --Project


LANG_REPORTS_R5.T_UTEXT5_LAB_REP,--Interested In
LANG_REPORTS_R5.T_UTEXT6_LAB_REP,--Classification
LANG_REPORTS_R5.M_CST_NAME_LBL_REP, --Name

LANG_BUTT0NS.TEMPLATE_BTN, --Template

LANG_CRM.START_DATE_CRM,     --Start Date

SYS_DATAINFO.COMPANY_NAME  --Company Name

FROM    LANG_CRM

   INNER JOIN LANG_DEF1
   ON LANG_DEF1.LANGCODE_DEF1 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_DEF2
   ON LANG_DEF2.LANGCODE_DEF2 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_DEF6
   ON LANG_DEF6.LANGCODE_DEF6 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_DEF7
   ON LANG_DEF7.LANGCODE_DEF7 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_DEF11
   ON LANG_DEF11.LANGCODE_DEF11 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_DEF12
   ON LANG_DEF12.LANGCODE_DEF12 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_DEF20
   ON LANG_DEF20.LANGCODE_DEF20 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_USERFIELDS2
   ON LANG_USERFIELDS2.LANGCODE_USER2 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_USERFIELDS
   ON LANG_USERFIELDS.LANGCODE_USER = LANG_CRM.LANGCODE_CRM

   Inner JOIN LANG_REPORTS_R
   ON LANG_REPORTS_R.LANGCODE_REP_1 = LANG_CRM.LANGCODE_CRM

   Inner JOIN LANG_REPORTS_R2
   ON LANG_REPORTS_R2.LANGCODE_REP2 = LANG_CRM.LANGCODE_CRM

   Inner JOIN LANG_REPORTS_R3
   ON LANG_REPORTS_R3.LANGCODE_REP3 = LANG_CRM.LANGCODE_CRM

   Inner JOIN LANG_REPORTS_R4
   ON LANG_REPORTS_R4.LANGCODE_REP4 = LANG_CRM.LANGCODE_CRM

   Inner JOIN LANG_REPORTS_R5
   ON LANG_REPORTS_R5.LANGCODE_REP5 = LANG_CRM.LANGCODE_CRM

   INNER JOIN LANG_BUTT0NS
   ON LANG_BUTT0NS.LANGCODE_BTN = LANG_CRM.LANGCODE_CRM

   INNER JOIN SYS_DATAINFO
   ON SYS_PRIMARY = 1