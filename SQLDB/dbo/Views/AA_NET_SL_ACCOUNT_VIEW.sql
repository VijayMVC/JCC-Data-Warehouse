﻿create VIEW AA_NET_SL_ACCOUNT_VIEW
AS
SELECT     dbo.SL_ACCOUNTS.CUCODE, dbo.SL_ACCOUNTS.CUPROSCODE, (CASE WHEN ISNULL(CUCODE, '') = '' THEN 'P' ELSE 'C' END) 
                      AS CU_ACCOUNT_TYPE, dbo.SL_ACCOUNTS.CUNAME, dbo.SL_ACCOUNTS.CUADDRESS, dbo.SL_ACCOUNTS.CU_ADDRESS_USER1, 
                      dbo.SL_ACCOUNTS.CU_ADDRESS_USER2, dbo.SL_ACCOUNTS.CUPOSTCODE, dbo.SL_ACCOUNTS.CU_COUNTRY, dbo.SL_ACCOUNTS.CUPHONE, 
                      dbo.SL_ACCOUNTS.CUFAX, dbo.SL_ACCOUNTS2.CU_MOBILE_NUMBER, dbo.SL_ACCOUNTS.CU_EMAIL, 
                      dbo.SL_ACCOUNTS2.CU_WEBSITE_ADDRESS, dbo.SL_ACCOUNTS.CUCURRENCYCODE, 
                      dbo.SYS_CURRENCY.CURR_SYMBOL AS CURRENCYSYMBOL, dbo.SL_ACCOUNTS.CU_MULTI_CURR, dbo.SL_ACCOUNTS.CU_EXPORT_CODE, 
                      dbo.SL_ACCOUNTS.CU_ANALYSIS, dbo.SL_ANALYSIS.SACURRENCYSYMBL AS SALESANALYSISCURRENCY, dbo.SL_ACCOUNTS.CU_TAX_CODE, 
                      dbo.SL_ACCOUNTS.CU_BANK_ANALYS, SL_ANALYSIS_BANK.SACURRENCYSYMBL AS BANKANALYSISCURRENCY, 
                      dbo.SL_ACCOUNTS.CU_VAT_REG_NO, dbo.SL_ACCOUNTS.CU_COUNTRY_CODE, dbo.SL_ACCOUNTS.CU_EC_DELIVERY, 
dbo.SL_ACCOUNTS.CU_EC_T_NATURE,
dbo.SL_ACCOUNTS.CU_EC_T_MODE,
dbo.SL_ACCOUNTS2.CU_LANG_CODE, 
dbo.SL_ACCOUNTS.CU_USERDATE1,
dbo.SL_ACCOUNTS2.CU_LEVEL,
dbo.SL_ACCOUNTS.CU_ON_STOP,
isnull(dbo.SYS_DOCUMENT_LAYOUTS.SDL_DOC_NAME,'') as CU_INV_LAYOUT, 
dbo.SL_ACCOUNTS.CU_PRICE_KEY,
dbo.AA_TWO_DPS_F(dbo.SL_ACCOUNTS.CU_TOT_DISC) AS CU_TOT_DISC, 
                      dbo.AA_TWO_DPS_F(dbo.SL_ACCOUNTS.CU_LINE_DISC) AS CU_LINE_DISC, dbo.AA_VALUE_DPS_F(dbo.SL_ACCOUNTS.CU_CREDIT_LIMIT) 
                      AS CU_CREDIT_LIMIT, dbo.SL_ACCOUNTS.CU_TERMS, dbo.AA_TWO_DPS_F(dbo.SL_ACCOUNTS.CU_SETT_DISC_1) AS CU_SETT_DISC_1, 
                      dbo.SL_ACCOUNTS.CU_SETT_DAYS_1, dbo.AA_TWO_DPS_F(dbo.SL_ACCOUNTS.CU_SETT_DISC_2) AS CU_SETT_DISC_2, 
                      dbo.SL_ACCOUNTS.CU_SETT_DAYS_2, dbo.AA_VALUE_DPS_F(dbo.SL_ACCOUNTS.CU_DEL_CHARGE) AS CU_DEL_CHARGE, 
                      dbo.AA_TWO_DPS_F(dbo.SL_ACCOUNTS.CU_DEL_CHG_PCNT) AS CU_DEL_CHG_PCNT, dbo.AA_VALUE_DPS_F(dbo.SL_ACCOUNTS.CU_MIN_ORDR) 
                      AS CU_MIN_ORDR, dbo.SL_ACCOUNTS.CU_A_P_DAYS, dbo.SL_ACCOUNTS.CU_DUEDATE_TYPE, dbo.SL_ACCOUNTS.CU_DUE_DAYS, 
                      dbo.SL_ACCOUNTS.CUSORT, dbo.SL_ACCOUNTS.CUUSER1, dbo.SL_ACCOUNTS.CUUSER2, dbo.SL_ACCOUNTS.CUUSER3, 
                      dbo.SL_ACCOUNTS.CU_NOTES, dbo.SL_ACCOUNTS2.CU_CONTACT_COMPTYPE, dbo.SL_ACCOUNTS.CUCONTACT, 
                      dbo.SL_ACCOUNTS2.CU_CONTACT_TITLE, dbo.SL_ACCOUNTS2.CU_CONTACT_INITIALS, dbo.SL_ACCOUNTS2.CU_CONTACT_SURNAME, 
                      dbo.SL_ACCOUNTS2.CU_CONTACT_FIRSTNAME, dbo.SL_ACCOUNTS.CUSALUTE, dbo.SL_ACCOUNTS2.CU_CONTACT_JOB, 
                      dbo.SL_ACCOUNTS2.CU_BANK_SORT, dbo.SL_ACCOUNTS2.CU_BANK_AC_NO, dbo.SL_ACCOUNTS2.CU_BANK_BANKNAME, 
                      dbo.SL_ACCOUNTS2.CU_BANK_BACSREF, dbo.SL_ACCOUNTS2.CU_BANK_AC_NAME, dbo.SL_ACCOUNTS.CU_WEB_PASSWORD, 
                      dbo.SL_ACCOUNTS2.CU_ISDN_NUMBER, dbo.SL_ACCOUNTS2.CU_EDI_ANA, dbo.SL_ACCOUNTS2.CU_EDI_CUSTIDN, 
                      dbo.SL_ACCOUNTS2.CU_USRCHAR1, dbo.SL_ACCOUNTS2.CU_USRCHAR2, dbo.SL_ACCOUNTS2.CU_USRCHAR5, 
                      dbo.SL_ACCOUNTS2.CU_USRCHAR6, dbo.SL_ACCOUNTS2.CU_USRCHAR7, dbo.SL_ACCOUNTS2.CU_USRCHAR8, 
                      dbo.SL_ACCOUNTS2.CU_USRDATE1, dbo.SL_ACCOUNTS2.CU_USRDATE2, dbo.SL_ACCOUNTS2.CU_USRDATE3, dbo.SL_ACCOUNTS2.CU_USRFLAG1, 
                      dbo.SL_ACCOUNTS2.CU_USRFLAG2, dbo.SL_ACCOUNTS2.CU_USRFLAG3, dbo.SL_ACCOUNTS2.CU_USRNUM1, dbo.SL_ACCOUNTS2.CU_USRNUM2, 
                      dbo.SL_ACCOUNTS2.CU_USRNUM3, dbo.SL_ACCOUNTS.CUUSED, dbo.SL_ACCOUNTS.CU_DATE_PUTIN, dbo.SL_ACCOUNTS.CU_DATE_EDITED, 
                      dbo.SL_ACCOUNTS.CU_DATE_INV, dbo.SL_ACCOUNTS.CU_DATE_PAY, dbo.SL_ACCOUNTS.CU_INV_ADD_CDE, 
                      dbo.SL_ACCOUNTS.CU_DEL_ADD_CDE, dbo.SL_ACCOUNTS.CU_STAT_ADD_CDE, dbo.SL_ACCOUNTS.CU_PRIMARY, 
                      dbo.AA_VALUE_DPS_F(dbo.SL_ACCOUNTS.CUBALANCE) AS CUBALANCE, dbo.AA_VALUE_DPS_F(dbo.SL_ACCOUNTS.CUTURNOVERPTD) 
                      AS CUTURNOVERPTD, dbo.AA_VALUE_DPS_F(dbo.SL_ACCOUNTS.CUTURNOVERYTD) AS CUTURNOVERYTD, dbo.SL_ACCOUNTS2.CU_HEAD_OFFICE, 
                      dbo.SL_ACCOUNTS2.CU_HEAD_OFFICE_CODE, dbo.SL_ACCOUNTS2.CU_STOCK_ALLOCATION_PRIORITY, dbo.SL_ACCOUNTS3.CU3_USRCHAR1, 
                      dbo.SL_ACCOUNTS3.CU3_USRCHAR2, dbo.SL_ACCOUNTS3.CU3_USRCHAR3, dbo.SL_ACCOUNTS3.CU3_USRCHAR4, 
                      dbo.SL_ACCOUNTS3.CU3_USRCHAR5, dbo.SL_ACCOUNTS3.CU3_USRCHAR6, dbo.SL_ACCOUNTS3.CU3_USRCHAR7, 
                      dbo.SL_ACCOUNTS3.CU3_USRCHAR8, dbo.SL_ACCOUNTS3.CU3_USRCHAR9, dbo.SL_ACCOUNTS3.CU3_USRCHAR10, 
                      dbo.SL_ACCOUNTS3.CU3_USRCHAR11, dbo.SL_ACCOUNTS3.CU3_USRCHAR12, dbo.SL_ACCOUNTS3.CU3_USRCHAR13, 
                      dbo.SL_ACCOUNTS3.CU3_USRCHAR14, dbo.SL_ACCOUNTS3.CU3_USRDATE1, dbo.SL_ACCOUNTS3.CU3_USRDATE2, 
                      dbo.SL_ACCOUNTS3.CU3_USRDATE3, dbo.SL_ACCOUNTS3.CU3_USRDATE4, dbo.SL_ACCOUNTS3.CU3_USRDATE5, 
                      dbo.SL_ACCOUNTS3.CU3_USRDATE6, dbo.SL_ACCOUNTS3.CU3_USRDATE7, dbo.SL_ACCOUNTS3.CU3_USRNUM1, 
                      dbo.SL_ACCOUNTS3.CU3_USRNUM2, dbo.SL_ACCOUNTS3.CU3_USRNUM3, dbo.SL_ACCOUNTS3.CU3_USRNUM4, 
                      dbo.SL_ACCOUNTS3.CU3_USRNUM5, dbo.SL_ACCOUNTS2.CU_DO_NOT_FAX, dbo.SL_ACCOUNTS2.CU_DO_NOT_PHONE
from
dbo.SL_ACCOUNTS
LEFT OUTER JOIN dbo.SL_ACCOUNTS2 ON dbo.SL_ACCOUNTS.CU_PRIMARY = dbo.SL_ACCOUNTS2.CU_PRIMARY_2
LEFT OUTER JOIN dbo.SL_ACCOUNTS3 ON dbo.SL_ACCOUNTS.CU_PRIMARY = dbo.SL_ACCOUNTS3.CU_PRIMARY_3 
LEFT OUTER JOIN dbo.SL_ANALYSIS ON dbo.SL_ACCOUNTS.CU_ANALYSIS = dbo.SL_ANALYSIS.SACODE 
LEFT OUTER JOIN dbo.SL_ANALYSIS AS SL_ANALYSIS_BANK ON dbo.SL_ACCOUNTS.CU_BANK_ANALYS = dbo.SL_ANALYSIS.SACODE 
LEFT OUTER JOIN dbo.SYS_CURRENCY ON dbo.SL_ACCOUNTS.CUCURRENCYCODE = dbo.SYS_CURRENCY.CURR_CODE
left join dbo.SYS_DOCUMENT_LAYOUTS on dbo.SYS_DOCUMENT_LAYOUTS.SDL_PRIMARY = dbo.SL_ACCOUNTS.CU_INV_LAYOUT_LINK
