﻿create view AA_PL_ANALYSIS_SIMPLE_VIEW
/*
** Returns a table to be used specifically with AA_PL_ANALYSIS_LIST_S
** Written:      21/02/03 SRB
** Last Amended: 27/02/03 SRB; 13/03/03 ROBB; 03/03/04 DG; 05/05/04 DG; 13/01/05 SR, 02/03/2005 SH, 13/12/05 NC, 17/05/2006 SH
**
*/
as

select
 PA_PRIMARY as [PRIMARY]
,cast(PA_ANALYSIS_MATRIX as bit) as PA_ANALYSIS_MATRIX
,PACODE 
,coalesce(PANAME, '') as PANAME
,PACURRENCYSYMBL
,coalesce(PASORT, '') as PASORT
,PATYPE_P_B_D
,cast(case when PADEFAULT_PURCH = 1 or PADEFAULT_BANK  = 1 then 1
      else 0
 end as bit) PADEFAULT_P_B
,cast(PADEFAULT_ROUNDING as bit) as PADEFAULT_ROUNDING
,cast(PALANDEDCOST as bit) as PALANDEDCOST
,PA_DATE_PUTIN
,PA_DATE_EDITED
,PA_LEVEL as PROFILELEVEL
,coalesce(PANOMINALDR, '') as PANOMINALDR
,dr.NNAME as PANOMINALDRNAME
,dr.NCATEGORYCODE1 as DEBITNCATCODE1
,dr.NCATEGORYCODE2 as DEBITNCATCODE2
,dr.NCATEGORYCODE3 as DEBITNCATCODE3
,dr.NCATEGORYCODE4 as DEBITNCATCODE4
,dr.NCATEGORYCODE5 as DEBITNCATCODE5
,dr.NCATEGORYCODE6 as DEBITNCATCODE6
,dr.NCATEGORYCODE7 as DEBITNCATCODE7
,dr.NCATEGORYCODE8 as DEBITNCATCODE8
,coalesce(PANOMINALCR, '') as PANOMINALCR
,cr.NNAME as PANOMINALCRNAME
,cr.NCATEGORYCODE1 as CREDITNCATCODE1
,cr.NCATEGORYCODE2 as CREDITNCATCODE2
,cr.NCATEGORYCODE3 as CREDITNCATCODE3
,cr.NCATEGORYCODE4 as CREDITNCATCODE4
,cr.NCATEGORYCODE5 as CREDITNCATCODE5
,cr.NCATEGORYCODE6 as CREDITNCATCODE6
,cr.NCATEGORYCODE7 as CREDITNCATCODE7
,cr.NCATEGORYCODE8 as CREDITNCATCODE8
,PA_FORCE_COSTING
,PA_DO_NOT_USE as EXCLUDED
from PL_ANALYSIS
left join NL_ACCOUNTS cr on PANOMINALCR = cr.NCODE
left join NL_ACCOUNTS dr on PANOMINALDR = dr.NCODE
left join PL_ANALYSIS2 on PA_PRIMARY = PA_PRIMARY_2

