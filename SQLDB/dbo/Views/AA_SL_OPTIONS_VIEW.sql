﻿create view AA_SL_OPTIONS_VIEW
/*
** Written:      30/01/04 SRB
** Last Amended: 08/10/04 ROBB; 07/12/04, 13/05/2005 SH, 09/02/2006 SRB, 16/02/2006 SRB, 22/05/2006 SRB
** Comments: Returns Sales Ledger Options
*/
as

select
--Auto Numbering
AUTO_NUMBR_CUST
,NEXT_CUST_NUMBR
,CAPS_CUST_NAME

--Prompts
,case substring(SYS_MESSAGE_SWITCH, 1, 1) when 0 then 1 else 0 end as allow_CUSTOMER_TAXINFO_PROMPT
,case substring(SYS_MESSAGE_SWITCH, 1, 1) when 0 then 1 else 0 end as DISABLE_CUSTOMER_TAXINFO_PROMPT
,case ALLOW_AUTO_CUSTOMER_TASK  when 0 then 1 else 0 end as DISABLE_AUTO_CUSTOMER_TASK
--Documents
,INC_ALLOC_MATCH

--Ageing Method
,case SL_AGEING_MTHD
	when 'M' then
		0
	else
		1
end as SL_AGEING_BY_DAYS
,SL_AGEING_DAYS1
,SL_AGEING_DAYS2
,SL_AGEING_DAYS3
,SL_AGEING_DAYS4

--Terms Template
,TOTAL_DISCOUNT
,dbo.AA_TWO_DPS_F(SETTLE_DISC_1) as SETTLE_DISC_1
,COALESCE(SETTLE_DAYS_1,0) as SETTLE_DAYS_1
,dbo.AA_TWO_DPS_F(SETTLE_DISC_2) as SETTLE_DISC_2
,COALESCE(SETTLE_DAYS_2,0) as SETTLE_DAYS_2
,dbo.AA_TWO_DPS_F(LINE_DISCOUNT) as LINE_DISCOUNT
,dbo.AA_PRICE_DPS_F(DELIV_CHG_FIXED) as DELIV_CHG_FIXED
,dbo.AA_TWO_DPS_F(DELIV_CHG_PRCNT) as DELIV_CHG_PRCNT
,dbo.AA_PRICE_DPS_F(CREDIT_LIMIT) as CREDIT_LIMIT
,DELIV_METHOD
,dbo.AA_VALUE_DPS_F(MIN_ORDER_VALUE) as MIN_ORDER_VALUE
,NORMAL_DAYS
,URGENT_DAYS
,TERMS
,DUE_DAYS
,DUE_DATE_TYPE

from 

SYS_DATAINFO
left join  SYS_DATAINFO2 on SYS_PRIMARY = SYS_PRIMARY_2
left join  SYS_DATAINFO3 on SYS_PRIMARY = SYS_PRIMARY_3



