﻿create view AA_SYS_PROFILE_SPECIFIC_SECURITY_VIEW
/*
** Written:      30/01/04 SRB
** Last Amended: 08/10/04 ROBB, 15/03/05 ROBB, 09/05/06 NC, 22/05/06 NC, 13/09/2011 CC
** Comments: Returns Cash Book Options
*/

as

select

--[USER_ID]
--Profile Code
 UPG_CODE
,UPG_CODE as PROFILECODE

--Future Period Posting
,UPG_SL_FUTURE_POST 
,UPG_SL_C_YEAR_ONLY 
,UPG_PL_FUTURE_POST 
,UPG_PL_C_YEAR_ONLY 
,UPG_NL_FUTURE_POST 
,UPG_NL_C_YEAR_ONLY 
,UPG_STK_FUTURE_POST
,UPG_STK_C_YEAR_ONLY
,UPG_SOP_FUTURE_POST
,UPG_SOP_C_YEAR_ONLY
,UPG_POP_FUTURE_POST
,UPG_POP_C_YEAR_ONLY
,UPG_CST_FUTURE_POST
,UPG_CST_C_YEAR_ONLY

--Global Options

--Batch Mode Only
,UPG_BATCH_ONLY

--Security
,UPG_NUMBER_LOGONS
,CASE COALESCE(UPG_PWORD_FREQUENCY,'N')  
   WHEN 'N' THEN 0
   WHEN 'D' THEN 1
   WHEN 'W' THEN 2
   WHEN 'M' THEN 3
   WHEN 'Y' THEN 4
   END AS UPG_PWORD_FREQUENCY

,UPG_LOGON_TIME_BEGIN
,UPG_LOGON_TIME_END

-- Record Manipulation
,UPG_LANG_ENTRY
,UPG_OWN_PROSPECT
,UPG_LEVEL_MODE
,UPG_INSERT_LEVEL

--Sales Order
,UPG_SOP_STATUS_DEF
,TXT_USER_TEXT 
,UPG_SOP_STATUS_LEVEL

--Communication
,UPG_NO_REPORTS
,UPG_NO_SPRDSHT
,UPG_DISABLE_EMAIL

--Default Sub Ledger
,UPG_SL_SUBLEDGERCODE
,SYS_SUB_LEDGERS_SL.SUBL_DESCRIPTION as SL_SUBLEDGERNAME
,UPG_NL_SUBLEDGERCODE
,SYS_SUB_LEDGERS_NL.SUBL_DESCRIPTION as NL_SUBLEDGERNAME
,UPG_PL_SUBLEDGERCODE
,SYS_SUB_LEDGERS_PL.SUBL_DESCRIPTION as PL_SUBLEDGERNAME

,coalesce(UPG_ORDER_BUDGET,0) as UPG_ORDER_BUDGET
,coalesce(UPG_CURRENT_BUDGET,0) as UPG_CURRENT_BUDGET
,coalesce(UPG_PREVIOUS_BUDGET,0) as UPG_PREVIOUS_BUDGET
,coalesce(UPG_EXCEED_OTHER_NL,0) as UPG_EXCEED_OTHER_NL
,coalesce(UPG_AUTHORISE_OWN,0) as UPG_AUTHORISE_OWN
,coalesce(UPG_AUTHORISE_ORDERS,0) as UPG_AUTHORISE_ORDERS
,coalesce(UPG_BUDGET_GROUP,'') as UPG_BUDGET_GROUP       -- Department
,coalesce(UPG_AUTHORISE_ALL,0) as UPG_AUTHORISE_ALL
,coalesce(UPG_AUTHORISE_TYPE,0) as UPG_AUTHORISE_TYPE
,coalesce(UPG_CHECK_BUDGET_VALUES,0) as UPG_CHECK_BUDGET_VALUES
,UPG_DELIVER_ALLOC_STOCK

FROM SYS_USER_PROFILE_GLOBAL
inner join SYS_LOOKUP_TEXT on TXT_PRIMARY = UPG_SOP_STATUS_DEF 
left join SYS_SUB_LEDGERS SYS_SUB_LEDGERS_SL on SYS_SUB_LEDGERS_SL.SUBL_CODE = UPG_SL_SUBLEDGERCODE and SYS_SUB_LEDGERS_SL.SUBL_TYPE = 'S'
left join SYS_SUB_LEDGERS SYS_SUB_LEDGERS_NL on SYS_SUB_LEDGERS_NL.SUBL_CODE = UPG_NL_SUBLEDGERCODE and SYS_SUB_LEDGERS_NL.SUBL_TYPE = 'N'
left join SYS_SUB_LEDGERS SYS_SUB_LEDGERS_PL on SYS_SUB_LEDGERS_PL.SUBL_CODE = UPG_PL_SUBLEDGERCODE and SYS_SUB_LEDGERS_PL.SUBL_CODE = 'P'

