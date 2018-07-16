﻿create view AA_SL_AGED_DEBT_DETAIL_SIMPLE_VIEW
/*
**
** Written:      
** Last Amended: 18/04/06 NC
**
*/
as
select
 DET_PRIMARY as [PRIMARY]
,ST_PRIMARY as HEADER_PRIMARY
--Analysis
,isnull(OH_ACCOUNT_ORDER,'') as OH_ACCOUNT_ORDER
,isnull(s1.CUNAME,'') as ORDER_ACCOUNT_NAME
,isnull(OH_ACCOUNT_DELIVERY,'') as OH_ACCOUNT_DELIVERY
,isnull(s2.CUNAME,'') as DELIVERY_ACCOUNT_NAME
,isnull(DET_ANALYSIS,'') as DET_ANALYSIS
,isnull(sa1.SANAME,'') as SANAME
,isnull(OD_STOCK_ANALYSIS,'') as STOCK_ANALYSIS
,isnull(DET_COSTHEADER,'') as DET_COSTHEADER
,isnull(CH_NAME,'') as CH_NAME
,isnull(DET_COSTCENTRE,'') as DET_COSTCENTRE 
,isnull(CC_NAME,'') as CC_NAME
,isnull(sa1.SANOMINALDR,'') as SANOMINALDR
,isnull(sa1.SANOMINALCR,'') as SANOMINALCR
,isnull(sa1.SANOMINALVAT,'') as SANOMINALVAT
,isnull(sa2.SANOMINALDR,'') as STK_NOMINALDR
,isnull(sa2.SANOMINALCR,'') as STK_NOMINALCR
--Product
,isnull(DET_STOCK_CODE,'') as DET_STOCK_CODE
,isnull(DET_PRICE_CODE,'') as DET_PRICE_CODE
,isnull(DET_STOCK_CODE,'') + isnull(DET_PRICE_CODE,'') as DET_STOCK_PRICE_CODE
,isnull(STKNAME,'') + isnull(PRNAME,'') as STKNAME_PRNAME
,dbo.AA_PRICE_DPS_F(DET_UNIT_PRICE) as DET_UNIT_PRICE
,dbo.AA_QUANTITY_DPS_F(DET_QUANTITY) as DET_QUANTITY
--Currency
,dbo.AA_VALUE_DPS_F(DET_GROSS) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_GROSS 
,dbo.AA_VALUE_DPS_F(DET_NETT) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_NETT 
,dbo.AA_VALUE_DPS_F(DET_CURR_GROSS) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_CURR_GROSS 
,dbo.AA_VALUE_DPS_F(DET_CURR_NETT) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_CURR_NETT
,dbo.AA_VALUE_DPS_F(DET_GROSS_BASE2) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_GROSS_BASE2
,dbo.AA_VALUE_DPS_F(DET_NETT_BASE2) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_NETT_BASE2
,dbo.AA_VALUE_DPS_F(DET_L_DISCOUNT) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_L_DISCOUNT
,dbo.AA_VALUE_DPS_F(DET_L_DISC_BASE2) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_L_DISC_BASE2
,dbo.AA_VALUE_DPS_F(DET_CURR_L_DISC) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_CURR_L_DISC
--VAT
,isnull(DET_VATCODE,'') as DET_VATCODE
,dbo.AA_VALUE_DPS_F(DET_VAT) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_VAT 
,dbo.AA_VALUE_DPS_F(DET_CURR_TAX) * case when DET_TYPE in ('INV','ADR','JDR') then 1 else -1 end as DET_CURR_TAX
--General
,case DET_RECONCILED when 1 then 'R' else '' end RECONCILED
,DET_DATE_PUTIN
,isnull(DET_DESCRIPTION,'') as DET_DESCRIPTION
,OD_ORDER_NUMBER
,ST_CURRENCYCODE

from SL_TRANSACTIONS
join SL_PL_NL_DETAIL with (index(DET_HEADER_KEY)) on DET_HEADER_KEY='S'+convert(varchar,convert(int,ST_PRIMARY))
left outer join ORD_DETAIL on OD_PRIMARY = DET_ORDER_LINK  
left outer join ORD_HEADER on OH_ORDER_NUMBER = OD_ORDER_NUMBER
left outer join SL_ACCOUNTS s1 on s1.CUCODE = OH_ACCOUNT_ORDER
left outer join SL_ACCOUNTS s2 on s2.CUCODE = OH_ACCOUNT_DELIVERY
left outer join CST_COSTHEADER on CH_CODE = DET_COSTHEADER
left outer join CST_COSTCENTRE on CC_CONCAT_CODES = DET_COSTHEADER + space(10 - len(DET_COSTHEADER)) + DET_COSTCENTRE 
left outer join STK_STOCK on STKCODE = DET_STOCK_CODE
left outer join PRC_PRICE_RECS on PRCODE = DET_PRICE_CODE
left outer join SL_ANALYSIS sa1 on sa1.SACODE = DET_ANALYSIS
left outer join SL_ANALYSIS sa2 on sa2.SACODE = OD_STOCK_ANALYSIS
where ST_BATCH_FLAG = 0 and (ST_ALOC_POINTER like '0%')
and isnull(DET_ANALYSIS,'')<>''