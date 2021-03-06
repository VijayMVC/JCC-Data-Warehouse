﻿CREATE VIEW AA_REP_CRM_PROSPECT_LIST_VIEW
/*
** Written     :  16/03/2006 RV
** Last Amended:  06/04/2006 RV
**
** Used by     :  My Records Report.rpt
*/
AS

SELECT

(case  when SL_ACCOUNTS.CUCODE is null then SL_ACCOUNTS.CUPROSCODE
       when SL_ACCOUNTS.CUCODE = '' then SL_ACCOUNTS.CUPROSCODE
       else  SL_ACCOUNTS.CUCODE
end ) as CustomerorProspect,

SL_ACCOUNTS.CUNAME,
isnull(SL_ACCOUNTS.CUADDRESS,'') As CUADDRESS,
isnull(SL_ACCOUNTS.CUPOSTCODE,'') As CUPOSTCODE,
isnull(SL_ACCOUNTS.CU_ADDRESS_USER1,'') As CU_ADDRESS_USER1,
isnull(SL_ACCOUNTS.CU_ADDRESS_USER2,'') As CU_ADDRESS_USER2,
isnull(SL_ACCOUNTS.CU_COUNTRY,'') As CU_COUNTRY,
SL_ACCOUNTS.CUPHONE,
SL_ACCOUNTS.CUFAX,
SL_ACCOUNTS.CU_EMAIL,
SL_ACCOUNTS.CUCONTACT,
SL_ACCOUNTS.CUSORT,
isnull(SL_ACCOUNTS.CU_USER_PUTIN,'') As CU_USER_PUTIN,
SL_ACCOUNTS.CU_DATE_PUTIN,
SL_ACCOUNTS.CU_DATE_EDITED,
isnull(SL_ACCOUNTS.CU_USER_EDITED,'') As CU_USER_EDITED,
SL_ACCOUNTS.CUCURRENCYCODE,
isnull(SL_ACCOUNTS.CU_MULTI_CURR,'') As CU_MULTI_CURR,
SL_ACCOUNTS.CUUSER1,
SL_ACCOUNTS.CUUSER2,
SL_ACCOUNTS.CUUSER3,
/*
SL_ACCOUNTS.CU_PRICE_KEY,
SL_ACCOUNTS.CU_TOT_DISC,
SL_ACCOUNTS.CU_LINE_DISC,
SL_ACCOUNTS.CU_MIN_ORDR,
SL_ACCOUNTS.CU_DEL_CHARGE,
SL_ACCOUNTS.CU_DEL_CHG_PCNT,
SL_ACCOUNTS.CU_TERMS,
SL_ACCOUNTS.CU_SETT_DISC_1,
SL_ACCOUNTS.CU_SETT_DISC_2,
SL_ACCOUNTS.CU_SETT_DAYS_1,
SL_ACCOUNTS.CU_SETT_DAYS_2,
SL_ACCOUNTS.CU_TERMS_OPTION,
SL_ACCOUNTS.CU_CREDIT_LIMIT,
SL_ACCOUNTS.CU_DUE_DAYS,
SL_ACCOUNTS.CU_DUEDATE_TYPE,
SL_ACCOUNTS.CU_A_P_DAYS,
SL_ACCOUNTS.CU_NOTES,
*/
SL_ACCOUNTS.CU_EXPORT_CODE,
/*
SL_ACCOUNTS.CU_COUNTRY_CODE,
SL_ACCOUNTS.CU_VAT_REG_NO,
SL_ACCOUNTS.CU_EC_DELIVERY,
SL_ACCOUNTS.CU_EC_T_NATURE,
SL_ACCOUNTS.CU_EC_T_MODE,
isnull(SL_ACCOUNTS.CU_ANALYSIS,'') As CU_ANALYSIS,
SL_ACCOUNTS.CU_TAX_CODE,
isnull(SL_ACCOUNTS.CU_BANK_ANALYS,'') As CU_BANK_ANALYS,
*/
isnull(SL_ACCOUNTS.CU_DEALERCODE,'') As CU_DEALERCODE,
SL_ACCOUNTS.CU_PRIMARY,
/*
isnull(SL_ACCOUNTS2.CU_BANK_SORT,'') As CU_BANK_SORT,
isnull(SL_ACCOUNTS2.CU_BANK_AC_NO,'') As CU_BANK_AC_NO,
isnull(SL_ACCOUNTS2.CU_BANK_AC_NAME,'') As CU_BANK_AC_NAME,
isnull(SL_ACCOUNTS2.CU_BANK_BACSREF,'') As CU_BANK_BACSREF,
isnull(SL_ACCOUNTS2.CU_BANK_BANKNAME,'') As CU_BANK_BANKNAME,
*/
SL_ACCOUNTS2.CU_WEBSITE_ADDRESS,
SL_ACCOUNTS2.CU_MOBILE_NUMBER,
Cast (SL_ACCOUNTS2.CU_DO_NOT_FAX As Bit) As CU_DO_NOT_FAX,
/*
isnull(SL_ACCOUNTS2.CU_ISDN_NUMBER,'') As CU_ISDN_NUMBER,
isnull(SL_ACCOUNTS2.CU_EDI_ANA,'') As CU_EDI_ANA,
isnull(SL_ACCOUNTS2.CU_EDI_CUSTIDN,'') As CU_EDI_CUSTIDN,
isnull(SL_ACCOUNTS2.CU_IBAN_NO,'') As CU_IBAN_NO,
isnull(SL_ACCOUNTS2.CU_OUR_ACCOUNT_CODE,'') As CU_OUR_ACCOUNT_CODE,
SL_ACCOUNTS2.CU_CONTACT_TITLE,
SL_ACCOUNTS2.CU_CONTACT_INITIALS,
SL_ACCOUNTS2.CU_CONTACT_SURNAME,
SL_ACCOUNTS2.CU_CONTACT_JOB,
SL_ACCOUNTS2.CU_CONTACT_COMPTYPE,
SL_ACCOUNTS2.CU_CONTACT_FIRSTNAME,
*/
SL_ACCOUNTS2.CU_USRCHAR1,           --Custom user tabs
SL_ACCOUNTS2.CU_USRCHAR2,
--SL_ACCOUNTS2.CU_USRCHAR3,
--SL_ACCOUNTS2.CU_USRCHAR4,
SL_ACCOUNTS2.CU_USRCHAR5,
SL_ACCOUNTS2.CU_USRCHAR6,
SL_ACCOUNTS2.CU_USRCHAR7,
SL_ACCOUNTS2.CU_USRCHAR8,
SL_ACCOUNTS2.CU_USRDATE1,
SL_ACCOUNTS2.CU_USRDATE2,
SL_ACCOUNTS2.CU_USRDATE3,
SL_ACCOUNTS2.CU_USRNUM1,
SL_ACCOUNTS2.CU_USRNUM2,
SL_ACCOUNTS2.CU_USRNUM3,
SL_ACCOUNTS2.CU_USRFLAG1,
SL_ACCOUNTS2.CU_USRFLAG2,
SL_ACCOUNTS2.CU_USRFLAG3,
/*
isnull(SALES.SANAME,'') As SANAME,
isnull(BANK.SANAME,'') AS BANK_NAME,
SYS_VATCONTROL.VAT_RATE,
*/

isnull(DEALER.CUNAME,'') AS DEALER_NAME,

isnull(SL_ACCOUNTS3.CU3_USRCHAR1,'') As CU3_USRCHAR1, --Industry Type
isnull(SL_ACCOUNTS3.CU3_USRCHAR2,'') As CU3_USRCHAR2, --Customer Type
isnull(SL_ACCOUNTS3.CU3_USRCHAR3,'') As CU3_USRCHAR3,    --Agent
isnull(SL_ACCOUNTS3.CU3_USRCHAR4,'') As CU3_USRCHAR4, --Current Product
isnull(SL_ACCOUNTS3.CU3_USRCHAR5,'') As CU3_USRCHAR5, --Market Sector
isnull(SL_ACCOUNTS3.CU3_USRCHAR6,'') As CU3_USRCHAR6, --Prospect Char 6
isnull(SL_ACCOUNTS3.CU3_USRCHAR7,'') As CU3_USRCHAR7, --Prospect Char 7
isnull(SL_ACCOUNTS3.CU3_USRCHAR8,'') As CU3_USRCHAR8, --Prospect Char 8
isnull(SL_ACCOUNTS3.CU3_USRCHAR9,'') As CU3_USRCHAR9, --Prospect Char 9
isnull(SL_ACCOUNTS3.CU3_USRCHAR10,'') As CU3_USRCHAR10,  --Prospect Char 10
isnull(SL_ACCOUNTS3.CU3_USRCHAR11,'') As CU3_USRCHAR11,  --Prospect Char 11
isnull(SL_ACCOUNTS3.CU3_USRCHAR12,'') As CU3_USRCHAR12,  --Prospect Char 12
isnull(SL_ACCOUNTS3.CU3_USRCHAR13,'') As CU3_USRCHAR13,  --Prospect Char 13
isnull(SL_ACCOUNTS3.CU3_USRCHAR14,'') As CU3_USRCHAR14,  --Prospect Char 14
SL_ACCOUNTS3.CU3_USRDATE1,          --Company Next Action
SL_ACCOUNTS3.CU3_USRDATE2,          --Prospect Date 2
SL_ACCOUNTS3.CU3_USRDATE3,          --Prospect Date 3
SL_ACCOUNTS3.CU3_USRDATE4,          --Prospect Date 4
SL_ACCOUNTS3.CU3_USRDATE5,          --Prospect Date 5
SL_ACCOUNTS3.CU3_USRDATE6,          --Prospect Date 6
SL_ACCOUNTS3.CU3_USRDATE7,          --Prospect Date 7
isnull(SL_ACCOUNTS3.CU3_USRNUM1,0) As CU3_USRNUM1, --Prospect Number 1
isnull(SL_ACCOUNTS3.CU3_USRNUM2,0) As CU3_USRNUM2, --Prospect Number 2
isnull(SL_ACCOUNTS3.CU3_USRNUM3,0) As CU3_USRNUM3, --Prospect Number 3
isnull(SL_ACCOUNTS3.CU3_USRNUM4,0) As CU3_USRNUM4, --Prospect Number 4
--isnull(SL_ACCOUNTS3.CU3_USRNUM5,0) As CU3_USRNUM5,  --Prospect Number 5

case when SL_ADDRESSES.AD_PROSPECT = 'P' then 1
   else 0
end as PROSPECTS_ONLY,

case when SL_ADDRESSES.AD_PROSPECT = 'C' then 1
   else 0
end as CUSTOMERS_ONLY,

SL_ADDRESSES.AD_USER_ALOC,
'ENGLISH   ' As LANGUAGE_LINK,
/*
SL_ADDRESSES.AD_ADDRESS,
SL_ADDRESSES.AD_ADDRESS_USER1,
SL_ADDRESSES.AD_ADDRESS_USER2,
SL_ADDRESSES.AD_POSTCODE,
SL_ADDRESSES.AD_HOME_PHONE,
SL_ADDRESSES.AD_EXTENSION,
SL_ADDRESSES.AD_PHONE,
SL_ADDRESSES.AD_FAX,
SL_ADDRESSES.AD_MOBILE,
SL_ADDRESSES.AD_E_MAIL,
SL_ADDRESSES.AD_CONTACT,
SL_ADDRESSES.AD_CONT_SALUTE,
SL_ADDRESSES.AD_CON_TITLE,
SL_ADDRESSES.AD_CON_INITIALS,
SL_ADDRESSES.AD_CON_SURNAME,
SL_ADDRESSES.AD_CON_JOB,
SL_ADDRESSES.AD_CON_FNAME,
SL_ADDRESSES.AD_ACCOUNTNAME,
SL_ADDRESSES.AD_NOTE,
SL_ADDRESSES.AD_USERTEXT1, --Next Action
SL_ADDRESSES.AD_USERTEXT2, --Status
SL_ADDRESSES.AD_USERTEXT3, --Salesman
*/
SL_ADDRESSES.AD_USERTEXT4, --Source
/*
SL_ADDRESSES.AD_USERTEXT5, --100 char fields
SL_ADDRESSES.AD_USERTEXT6, --100 char fields
SL_ADDRESSES.AD_USERTEXT7, --Oportunity
SL_ADDRESSES.AD_USERTEXT8, --Sales Process
SL_ADDRESSES.AD_USERTEXT9, --Sales Stage
SL_ADDRESSES.AD_USERTEXT10,--Contact Char 8
SL_ADDRESSES.AD_USERDATE1,
SL_ADDRESSES.AD_USERDATE2,
SL_ADDRESSES.AD_USERDATE3,
SL_ADDRESSES.AD_USERNUM1,
SL_ADDRESSES.AD_USERNUM2,
SL_ADDRESSES.AD_USERNUM3,
SL_ADDRESSES.AD_USERFLAG1,
SL_ADDRESSES.AD_USERFLAG2,
SL_ADDRESSES.AD_USERFLAG3,
SL_ADDRESSES.AD_USERFLAG4,
SL_ADDRESSES.AD_EDITED_TIME,
isnull(SL_ADDRESSES.AD_RECALL_TIME,'') As AD_RECALL_TIME,
isnull(SL_ADDRESSES.AD_USER_EDITED,'') As AD_USER_EDITED,
*/
SL_ADDRESSES.AD_USER_PUTIN,
SL_ADDRESSES.AD_DATE_PUTIN
/*
SL_ADDRESSES.AD_DATE_EDITED,
SL_ADDRESSES.AD_DLR_NOTIFICATION,
SL_ADDRESSES.AD_DLR_NOTIFICATION_DATE,
SL_ADDRESSES.AD_CNT_NOTIFICATION,
SL_ADDRESSES.AD_CNT_NOTIFICATION_DATE,
isnull(SL_ADDRESSES.AD_CC_EMAIL,'') As AD_CC_EMAIL,
SL_ADDRESSES.AD_COUNTRY,
SL_ADDRESSES.AD_COUNTRY_CODE,
SL_ADDRESSES.AD_DO_NOT_EMAIL,
SL_ADDRESSES.AD_DATE_ALLOCATED,

isnull(SL_ADDRESSES3.AD3_USRCHAR1,'') As AD3_USRCHAR1,
isnull(SL_ADDRESSES3.AD3_USRCHAR2,'') As AD3_USRCHAR2,
isnull(SL_ADDRESSES3.AD3_USRCHAR3,'') As AD3_USRCHAR3,
isnull(SL_ADDRESSES3.AD3_USRCHAR4,'') As AD3_USRCHAR4,
isnull(SL_ADDRESSES3.AD3_USRCHAR5,'') As AD3_USRCHAR5,  --100 char field
isnull(SL_ADDRESSES3.AD3_USRCHAR6,'') As AD3_USRCHAR6,  --100 char field
isnull(SL_ADDRESSES3.AD3_USRCHAR7,'') As AD3_USRCHAR7,  --100 char field
isnull(SL_ADDRESSES3.AD3_USRCHAR8,'') As AD3_USRCHAR8,  --100 char field
isnull(SL_ADDRESSES3.AD3_USRCHAR9,'') As AD3_USRCHAR9,  --Contact Char 9
isnull(SL_ADDRESSES3.AD3_USRCHAR10,'') As AD3_USRCHAR10,
isnull(SL_ADDRESSES3.AD3_USRCHAR11,'') As AD3_USRCHAR11,
isnull(SL_ADDRESSES3.AD3_USRCHAR12,'') As AD3_USRCHAR12,
SL_ADDRESSES3.AD3_USRDATE1,            --Next Action Date
SL_ADDRESSES3.AD3_USRDATE2,            --Contact Date 2
SL_ADDRESSES3.AD3_USRDATE3,            --Contact Date 3
SL_ADDRESSES3.AD3_USRDATE4,
SL_ADDRESSES3.AD3_USRDATE5,
SL_ADDRESSES3.AD3_USRDATE6,
SL_ADDRESSES3.AD3_USRDATE7,
SL_ADDRESSES3.AD3_USRDATE8,
SL_ADDRESSES3.AD3_USRDATE9,
isnull(SL_ADDRESSES3.AD3_USRNUM1,0) As AD3_USRNUM1,
isnull(SL_ADDRESSES3.AD3_USRNUM2,0) As AD3_USRNUM2,
isnull(SL_ADDRESSES3.AD3_USRNUM3,0) As AD3_USRNUM3,
isnull(SL_ADDRESSES3.AD3_USRNUM4,0) As AD3_USRNUM4,
isnull(SL_ADDRESSES3.AD3_USRNUM5,0) As AD3_USRNUM5,
cast(SL_ADDRESSES3.AD3_USRFLAG1 As Bit) As AD3_USRFLAG1,
cast(SL_ADDRESSES3.AD3_USRFLAG2 As Bit) As AD3_USRFLAG2,
cast(SL_ADDRESSES3.AD3_USRFLAG3 As Bit) As AD3_USRFLAG3,
cast(SL_ADDRESSES3.AD3_USRFLAG4 As Bit) As AD3_USRFLAG4,
cast(SL_ADDRESSES3.AD3_USRFLAG5 As Bit) As AD3_USRFLAG5,
isnull(SL_ADDRESSES3.AD3_USRTIME1,'') As AD3_USRTIME1
*/
FROM SL_ACCOUNTS

   INNER JOIN SL_ACCOUNTS2
   ON SL_ACCOUNTS2.CU_PRIMARY_2 = SL_ACCOUNTS.CU_PRIMARY

   LEFT OUTER JOIN SL_ACCOUNTS3
   ON SL_ACCOUNTS3.CU_PRIMARY_3 = SL_ACCOUNTS2.CU_PRIMARY_2

   LEFT OUTER JOIN SL_ACCOUNTS DEALER
   ON SL_ACCOUNTS.CU_DEALERCODE = DEALER.CUCODE And DEALER.CUCODE is not null And DEALER.CUCODE <> ''

   LEFT OUTER JOIN SYS_VATCONTROL
   ON SL_ACCOUNTS.CU_TAX_CODE = SYS_VATCONTROL.VAT_CODE

   LEFT OUTER JOIN SL_ANALYSIS BANK
   ON SL_ACCOUNTS.CU_BANK_ANALYS = BANK.SACODE

   LEFT OUTER JOIN SL_ANALYSIS SALES
   ON SL_ACCOUNTS.CU_ANALYSIS = SALES.SACODE

   INNER JOIN SL_ADDRESSES
   ON SL_ACCOUNTS.CUPROSCODE = SL_ADDRESSES.AD_ACC_CODE Or SL_ACCOUNTS.CUCODE = SL_ADDRESSES.AD_ACC_CODE

   LEFT OUTER JOIN SL_ADDRESSES3
   ON SL_ADDRESSES.SL_AD_PRIMARY = SL_ADDRESSES3.AD_PRIMARY_3

   Left Outer JOIN SYS_USER
   ON SL_ADDRESSES.AD_USER_ALOC = SYS_USER.[USER_ID]

--Where  SYS_USER.USER_ACTIVE = 1