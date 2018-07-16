﻿CREATE VIEW AA_NET_SL_ANALYSIS_LIST_VIEW
/*
** Returns a table to be used specifically with AA_NET_SL_ANALYSIS_LIST_S
** Written:      21/02/03 SRB
** Last Amended: 27/02/03 SRB; 13/03/03 ROBB
**
*/
AS

SELECT

SACODE as [PRIMARY]
,SA_LEVEL as PROFILELEVEL
,SA_DATE_PUTIN
,SA_DATE_EDITED
,SACODE
,SACODE AS CHILD
,SASORT
,COALESCE(SANAME,'') as SANAME
,SATYPE_S_B_D
,COALESCE(SANOMINALCR,'') as SANOMINALCR
,CREDITACCOUNT.NNAME AS SANOMINALCRNAME
,CREDITACCOUNT.NCATEGORYCODE1 AS CREDITNCATCODE1
,CREDITACCOUNT.NCATEGORYCODE2 AS CREDITNCATCODE2
,CREDITACCOUNT.NCATEGORYCODE3 AS CREDITNCATCODE3
,CREDITACCOUNT.NCATEGORYCODE4 AS CREDITNCATCODE4
,CREDITACCOUNT.NCATEGORYCODE5 AS CREDITNCATCODE5
,CREDITACCOUNT.NCATEGORYCODE6 AS CREDITNCATCODE6
,CREDITACCOUNT.NCATEGORYCODE7 AS CREDITNCATCODE7
,CREDITACCOUNT.NCATEGORYCODE8 AS CREDITNCATCODE8
,COALESCE(SANOMINALDR,'') as SANOMINALDR
,DEBITACCOUNT.NNAME AS SANOMINALDRNAME
,DEBITACCOUNT.NCATEGORYCODE1 AS DEBITNCATCODE1
,DEBITACCOUNT.NCATEGORYCODE2 AS DEBITNCATCODE2
,DEBITACCOUNT.NCATEGORYCODE3 AS DEBITNCATCODE3
,DEBITACCOUNT.NCATEGORYCODE4 AS DEBITNCATCODE4
,DEBITACCOUNT.NCATEGORYCODE5 AS DEBITNCATCODE5
,DEBITACCOUNT.NCATEGORYCODE6 AS DEBITNCATCODE6
,DEBITACCOUNT.NCATEGORYCODE7 AS DEBITNCATCODE7
,DEBITACCOUNT.NCATEGORYCODE8 AS DEBITNCATCODE8
,COALESCE(SANOMINALVAT,'') as SANOMINALVAT
,TAXACCOUNT.NNAME AS SANOMINALVATNAME
,TAXACCOUNT.NCATEGORYCODE1 AS TAXNCATCODE1
,TAXACCOUNT.NCATEGORYCODE2 AS TAXNCATCODE2
,TAXACCOUNT.NCATEGORYCODE3 AS TAXNCATCODE3
,TAXACCOUNT.NCATEGORYCODE4 AS TAXNCATCODE4
,TAXACCOUNT.NCATEGORYCODE5 AS TAXNCATCODE5
,TAXACCOUNT.NCATEGORYCODE6 AS TAXNCATCODE6
,TAXACCOUNT.NCATEGORYCODE7 AS TAXNCATCODE7
,TAXACCOUNT.NCATEGORYCODE8 AS TAXNCATCODE8

,SACURRENCYSYMBL
,SADEFAULT_BANK
,SADEFAULT_SALES
,SA_ANALYSIS_MATRIX
,SADEFAULT_ROUNDING

FROM SL_ANALYSIS

LEFT JOIN NL_ACCOUNTS CREDITACCOUNT ON
   SANOMINALCR = CREDITACCOUNT.NCODE
LEFT JOIN NL_ACCOUNTS DEBITACCOUNT ON
   SANOMINALDR = DEBITACCOUNT.NCODE
LEFT JOIN NL_ACCOUNTS TAXACCOUNT ON
   SANOMINALVAT = TAXACCOUNT.NCODE