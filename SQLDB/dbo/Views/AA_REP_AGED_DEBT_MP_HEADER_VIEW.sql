﻿create view AA_REP_AGED_DEBT_MP_HEADER_VIEW
/*
** Written:			10/5/2005 RL
** Last Amended:	11/7/2005 RL, 12/7/2005 RL, 27/09/2005 SB
** Comments: returns selected sales transaction headers for Multiple Period Aged Debtors crystal reports
*/
as

select
ST_PRIMARY,
ST_TRANTYPE,
ST_GROSS,                   
CAST (ST_BATCH_FLAG AS BIT) AS ST_BATCH_FLAG,
ST_CURRENCYCODE,
ST_CURR_VALU,
ST_YEAR,
ST_PERIODNUMBER,
ST_PERIODNUMBER + NO_OF_PERIODS * charindex(ST_YEAR,'LCN') as PERIOD_SORT,
ST_DATE,
ST_HEADER_REF,
ST_GROSS_BASE2,
ST_SUB_LEDGER,
ST_DUEDATE,
ST_USER1,
ST_USER2,
ST_USER3,
ST_TRI_RATE1,
ST_TRI_RATE2,
ST_DESCRIPTION,
CUCODE,
CUNAME,
CUBALANCE,
CUPHONE,
CUFAX,
CUCONTACT,
CUSORT,
CUUSER1,
CUUSER2,
CUUSER3,
CUCURRENCYCODE,
CAST (CU_ON_STOP AS BIT) AS CU_ON_STOP,
CU_CREDIT_LIMIT,
CU_TERMS,
CU_NOTES,
CU_MULTI_CURR,
CU_CURRENCY_CHANGED,
CUPOSTCODE,
CU_DUE_DAYS,
CU_DUEDATE_TYPE,
CU_A_P_DAYS,
CU_SETT_DAYS_1,
CU_SETT_DAYS_2,
CU_SETT_DISC_1,
CU_SETT_DISC_2,
CU_DATE_INV,
S_AL_PRIMARY,
S_AL_DATE,
S_AL_PERIOD,
S_AL_YEAR,
S_AL_VALUE_HOME,
S_AL_VALUE_CURR,
S_AL_VALUE_HOME * ST_GROSS_BASE2/ST_GROSS as S_AL_VALUE_BASE2,
S_AL_REFERENCE,
S_AL_USER_ID,
S_AL_FULLALLOC_PD,
S_AL_FULLALLOC_DATE,
case
	when ST_TRANTYPE in ('INV','ADR') then S_AL_VALUE_HOME
	else 0
end as HOME_DEBIT_VALUE,
case
	when ST_TRANTYPE in ('INV','ADR') then S_AL_VALUE_CURR
	else 0
end as CURR_DEBIT_VALUE,
case
	when ST_TRANTYPE in ('INV','ADR') then S_AL_VALUE_HOME * ST_GROSS_BASE2/ST_GROSS
	else 0
end as BASE2_DEBIT_VALUE,
case
	when ST_TRANTYPE in ('CRN','PAY','ACR') then -S_AL_VALUE_HOME
	else 0
end as HOME_CREDIT_VALUE,
case
	when ST_TRANTYPE in ('CRN','PAY','ACR') then -S_AL_VALUE_CURR
	else 0
end as CURR_CREDIT_VALUE,
case
	when ST_TRANTYPE in ('CRN','PAY','ACR') then -(S_AL_VALUE_HOME * ST_GROSS_BASE2/ST_GROSS)
	else 0
end as BASE2_CREDIT_VALUE
from
  SL_ALLOC_HISTORY
  inner join SL_TRANSACTIONS on ST_HEADER_KEY = S_AL_HEADER_KEY
  inner join SL_ACCOUNTS     on CUCODE        = S_AL_ACCOUNT_CODE,
  SYS_DATAINFO2