﻿CREATE VIEW AA_REP_AGED_DEBTORS_HEADER_VIEW
/*
** Written:     14/03/2005 RV   
** Last Amended: 05/04/05 RV, 12/04/05 RV, 28/04/05 RV, 03/05/05 RV, 01/07/05 RV
** Comments: returns selected sales transaction headers for Aged Debtors crystal reports
*/
AS
SELECT     
SL_TRANSACTIONS.ST_TRANTYPE, 
SL_TRANSACTIONS.ST_GROSS,                       
SL_TRANSACTIONS.ST_UNALLOCATED, 
CAST (SL_TRANSACTIONS.ST_BATCH_FLAG AS BIT) AS ST_BATCH_FLAG,                
SL_TRANSACTIONS.ST_CURRENCYCODE, 
SL_TRANSACTIONS.ST_CURR_VALU, 
SL_TRANSACTIONS.ST_CURR_UNAL,                       
SL_TRANSACTIONS.ST_YEAR, 
SL_TRANSACTIONS.ST_PERIODNUMBER,
SL_TRANSACTIONS.ST_DATE,
SL_TRANSACTIONS.ST_HEADER_REF,
SL_TRANSACTIONS.ST_GROSS_BASE2, 
SL_TRANSACTIONS.ST_SUB_LEDGER,
SL_TRANSACTIONS.ST_DUEDATE,
SL_TRANSACTIONS.ST_USER1,
SL_TRANSACTIONS.ST_USER2,
SL_TRANSACTIONS.ST_USER3,
SL_ACCOUNTS.CUCODE, 
SL_ACCOUNTS.CUNAME, 
SL_ACCOUNTS.CUPHONE, 
SL_ACCOUNTS.CUFAX,                       
SL_ACCOUNTS.CUCONTACT, 
SL_ACCOUNTS.CUBALANCE, 
SL_ACCOUNTS.CUSORT, 
SL_ACCOUNTS.CUUSER1,                       
SL_ACCOUNTS.CUUSER2, 
SL_ACCOUNTS.CUUSER3, 
SL_ACCOUNTS.CUTURNOVERYTD, 
SL_ACCOUNTS.CUCURRENCYCODE,                       
CAST (SL_ACCOUNTS.CU_ON_STOP AS BIT) AS CU_ON_STOP, 
SL_ACCOUNTS.CU_CREDIT_LIMIT, 
SL_ACCOUNTS.CU_EMAIL,            
SL_ACCOUNTS.CU_NOTES, 
SL_ACCOUNTS.CU_DATE_INV, 
SL_ACCOUNTS.CU_DATE_PAY, 
SL_ACCOUNTS.CU_USER_PUTIN,                       
SL_ACCOUNTS.CU_DATE_PUTIN, 
SL_ACCOUNTS.CU_DATE_EDITED, 
SL_ACCOUNTS.CU_USER_EDITED,                       
SL_ACCOUNTS.CU_LINE_DISC, 
SL_ACCOUNTS.CU_TOT_DISC, 
SL_ACCOUNTS.CU_SETT_DISC_1, 
SL_ACCOUNTS.CU_SETT_DISC_2,                       
SL_ACCOUNTS.CU_SETT_DAYS_1, 
SL_ACCOUNTS.CU_SETT_DAYS_2,                        
SL_ACCOUNTS.CU_TERMS, 
SL_ACCOUNTS.CU_DEL_CHARGE, 
SL_ACCOUNTS.CU_MIN_ORDR, 
SL_ACCOUNTS.CU_DUE_DAYS, 
SL_ACCOUNTS.CU_DEL_CHG_PCNT,
SL_ACCOUNTS.CU_A_P_DAYS,
SL_ACCOUNTS.CU_PRICE_KEY,              
SL_ACCOUNTS.CU_DUEDATE_TYPE

FROM SL_TRANSACTIONS 

  INNER JOIN SL_ACCOUNTS 
  ON SL_TRANSACTIONS.ST_COPYCUST = SL_ACCOUNTS.CUCODE

WHERE ST_BATCH_FLAG <> 1 And ST_UNALLOCATED <> 0