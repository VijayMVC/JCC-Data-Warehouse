﻿CREATE VIEW AA_REP_ZERO_VALUE_STOCK_VIEW
/*
** Written:     16/01/2006 RV   
** Last Amended: 
** Comments: returns zero value stock detail lines for self audit crystal reports
*/
AS

SELECT     

SL_PL_NL_DETAIL.DET_DATE, 
SL_PL_NL_DETAIL.DET_ACCOUNT, 
SL_PL_NL_DETAIL.DET_HEADER_REF,                       
SL_PL_NL_DETAIL.DET_NETT, 
SL_PL_NL_DETAIL.DET_VAT, 
SL_PL_NL_DETAIL.DET_PRIMARY,                       
SL_PL_NL_DETAIL.DET_YEAR, 
SL_PL_NL_DETAIL.DET_PERIODNUMBR,                       
SL_PL_NL_DETAIL.DET_STOCK_CODE, 
SL_PL_NL_DETAIL.DET_QUANTITY, 

STK_STOCK.STKNAME,

SYS_VATCONTROL.VAT_RATE,

'ENGLISH   ' AS LANGUAGE_LINK

FROM SL_PL_NL_DETAIL 

INNER JOIN STK_STOCK 
ON SL_PL_NL_DETAIL.DET_STOCK_CODE = STK_STOCK.STKCODE

INNER JOIN SL_TRANSACTIONS 
ON SL_PL_NL_DETAIL.DET_HEADER_KEY = SL_TRANSACTIONS.ST_HEADER_KEY

INNER JOIN SYS_VATCONTROL
ON SL_PL_NL_DETAIL.DET_VATCODE = SYS_VATCONTROL.VAT_CODE

WHERE 	DET_BATCH_FLAG <> 1 And 
	DET_TYPE = 'INV' And
	DET_NETT = 0.00