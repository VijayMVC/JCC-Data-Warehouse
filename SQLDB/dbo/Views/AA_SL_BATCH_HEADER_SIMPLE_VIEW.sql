﻿create view AA_SL_BATCH_HEADER_SIMPLE_VIEW
/*
** 
** Written:
** Last Amended: 22/02/2005 SR, 01/03/2005 SR, 03/03/2005 SH, 11/07/2005 SH, 23/08/2005 SH
**
*/
as

select
 cast(ST_PRIMARY as int) as [PRIMARY]
,ST_COPYCUST
,isnull(CUNAME,'') as CUNAME
,ST_DATE
,ST_TRANTYPE
,isnull(ST_HEADER_REF,'') as ST_HEADER_REF
,dbo.AA_VALUE_DPS_F(ST_GROSS) as ST_GROSS
,dbo.AA_VALUE_DPS_F(ST_GROSS) * case when ST_TRANTYPE in ('INV','ADR','JDR') then 1 else -1 end as SIGN_ST_GROSS
,ST_DUEDATE
,isnull(ST_DESCRIPTION,'') as ST_DESCRIPTION
,isnull(ST_BATCH_REF,'') as ST_BATCH_REF
,ST_ANTICPAYDATE
,dbo.AA_VALUE_DPS_F(ST_CURR_VALU) * case when ST_TRANTYPE in ('INV','ADR','JDR') then 1 else -1 end as ST_CURR_VALU
,ST_CURRENCYRATE
,ST_PRIMARY
,ST_YEAR
,ST_PERIODNUMBER
,ST_USER_PUTIN
,CU_PRIMARY
,ST_CURRENCYCODE

from SL_TRANSACTIONS 
join SL_ACCOUNTS on ST_COPYCUST = CUCODE 
where ST_BATCH_FLAG = 1
and (ST_ORIGIN <> 'SO' or ST_SRV_STATUS=0)