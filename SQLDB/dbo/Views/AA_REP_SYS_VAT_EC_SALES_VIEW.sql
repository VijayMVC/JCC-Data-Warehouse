﻿CREATE VIEW AA_REP_SYS_VAT_EC_SALES_VIEW
AS
/*
** Written:      24/11/2005 RV  
** Last Amended: 
** Comments: Returns EC Sales Details for crystal reports
*/
select 
 DET_VATCODE as VATCODE
,DET_ACCOUNT 
,DET_HEADER_REF
,DET_DATE
,DET_ECVAT_TYPE
,DET_EC_T_NATURE
,DET_TYPE
,DET_ORIGIN
,DET_NOM_YEAR
,DET_NOM_PERIOD
,DET_NOM_PERSORT
,DET_HEADER_KEY
,DET_TRI_RATE1
,DET_TRI_RATE2
,DET_CURR_RATE
,DET_CURR_CODE
,DET_COUNTRY_CDE
,Case 	When DET_ORIGIN = 'SO' Then D2.AD_VAT_REG_NO
	When DET_ORIGIN = 'S' Then SL_ADDRESSES.AD_VAT_REG_NO
	Else SL_ADDRESSES.AD_VAT_REG_NO
End   As VAT_REG_NO 
,dbo.AA_VALUE_DPS_F(case when ((DET_TYPE = 'INV') and (substring(DET_ORIGIN,1,1) = 'S')) then DET_CURR_NETT
                         when ((DET_TYPE = 'CRN') and (substring(DET_ORIGIN,1,1) = 'S')) then -DET_CURR_NETT
	           	 else 0  
end)  DET_CURR_NETT
,dbo.AA_VALUE_DPS_F(case when ((DET_TYPE = 'INV') and (substring(DET_ORIGIN,1,1) = 'S')) then DET_NETT
                         when ((DET_TYPE = 'CRN') and (substring(DET_ORIGIN,1,1) = 'S')) then -DET_NETT
                         else 0     
 end) DET_NETT 
,DET_PRIMARY


from SL_PL_NL_DETAIL
	

	Inner Join SL_TRANSACTIONS
	On SL_TRANSACTIONS.ST_HEADER_KEY = SL_PL_NL_DETAIL.DET_HEADER_KEY

	INNER JOIN SL_ACCOUNTS 
	ON SL_TRANSACTIONS.ST_COPYCUST = SL_ACCOUNTS.CUCODE	

	INNER JOIN SL_ADDRESSES 
	ON SL_ACCOUNTS.CUCODE = SL_ADDRESSES.AD_ACC_CODE AND SL_ACCOUNTS.CU_DEL_ADD_CDE = SL_ADDRESSES.AD_CODE 
	
	LEFT OUTER JOIN ORD_DETAIL
	ON ORD_DETAIL.OD_PRIMARY = SL_PL_NL_DETAIL.DET_ORDER_LINK and SL_PL_NL_DETAIL.DET_ORIGIN = 'SO'

 	LEFT OUTER JOIN ORD_HEADER
	ON ORD_HEADER.OH_ORDER_NUMBER = ORD_DETAIL.OD_ORDER_NUMBER 

	LEFT OUTER JOIN SL_ACCOUNTS D1
	ON ORD_HEADER.OH_ACCOUNT_DELIVERY = D1.CUCODE	

	LEFT OUTER JOIN SL_ADDRESSES D2
	ON D1.CUCODE = D2.AD_ACC_CODE and ORD_HEADER.OH_DEL_ADD = D2.AD_CODE

where DET_ECVAT_TYPE = 'G' 
  And (DET_BATCH_FLAG <> 1)
  And Not(DET_GROSS = 0 and DET_CURR_GROSS = 0) 
  And DET_NOM_YEAR <> 'O'


