﻿CREATE VIEW AA_NET_NL_RECORD_VIEW
/*
** Written:        10/12/02 ROBB
** Last Amended:   23/12/02 ROBB; 14/01/03 SRB; 15/01/03
*/
AS

SELECT 

NOne.NMAJORHEADCODE,
NL_MAJORNAME,
NL_MAJORMARKER,
NOne.NCODE,
NOne.NTYPE,
NOne.NNAME,
NOne.NCURRENCYCODE,
CURREC_DESCRIPTION,
NOne.NCATEGORYCODE1,
NOne.NCATEGORYCODE2,
NOne.NCATEGORYCODE3,
NOne.NCATEGORYCODE4,
NOne.NCATEGORYCODE5,
NOne.NCATEGORYCODE6,
NOne.NCATEGORYCODE7,
NOne.NCATEGORYCODE8,
CategoryOne.NL_CATEGORYNAME 	as CATEGORY_NAME1,
CategoryTwo.NL_CATEGORYNAME 	as CATEGORY_NAME2,
CategoryThree.NL_CATEGORYNAME 	as CATEGORY_NAME3,
CategoryFour.NL_CATEGORYNAME 	as CATEGORY_NAME4,
CategoryFive.NL_CATEGORYNAME 	as CATEGORY_NAME5,
CategorySix.NL_CATEGORYNAME 	as CATEGORY_NAME6,
CategorySeven.NL_CATEGORYNAME 	as CATEGORY_NAME7,
CategoryEight.NL_CATEGORYNAME 	as CATEGORY_NAME8,
NOne.NYEAR_END_CODE,
NTwo.NNAME as NYEAR_END_NAME,
N_LEVEL,
NOne.N_EXCLUDE_TRNREP,
NOne.N_EXCLUDE_RECREP,
NOne.N_CENTRALISED,
NOne.N_FORCE_COSTING,
NOne.NNOTES,
NOne.N_PROFILE_REC,
NOne.N_DATE_PUTIN,
NOne.N_DATE_EDITED,
N_USRCHAR1,
N_USRCHAR2,
N_USRCHAR5,
N_USRCHAR6,
N_USRCHAR7,
N_USRCHAR8,
N_USRDATE1,
N_USRDATE2,
N_USRDATE3,
N_USRFLAG1,
N_USRFLAG2,
N_USRFLAG3,
N_USRNUM1,
N_USRNUM2,
N_USRNUM3,
NOne.NBUDGET_N1_O,
NOne.N_PRIMARY,
NOne.NUSED,

dbo.AA_VALUE_DPS_F(NOne.NBALANCE) as NBALANCE

from NL_ACCOUNTS NOne
	inner join NL_ACCOUNTS2 
	on NOne.NCODE = NL_ACCOUNTS2.NCODE2
	inner join NL_MAJORHEADING
	on NOne.NMAJORHEADCODE = NL_MAJORHEADING.NL_MAJORCODE
	inner join SYS_CURRENCY_REC
	on NOne.NCURRENCYCODE = SYS_CURRENCY_REC.CURREC_SYMBOL
	left outer join NL_ACCOUNTS NTwo 
	on NOne.NYEAR_END_CODE = NTwo.NCODE
	LEFT OUTER JOIN
	      NL_CATEGORY CategoryOne ON 
	      NOne.NCATEGORYCODE1 = CategoryOne.NL_CAT_CODE1 
	LEFT OUTER JOIN
              NL_CATEGORY CategoryTwo ON 
	      NOne.NCATEGORYCODE2 = CategoryTwo.NL_CAT_CODE2
	LEFT OUTER JOIN
              NL_CATEGORY CategoryThree ON 
	      NOne.NCATEGORYCODE3 = CategoryThree.NL_CAT_CODE3
	LEFT OUTER JOIN
              NL_CATEGORY CategoryFour ON 
	      NOne.NCATEGORYCODE4 = CategoryFour.NL_CAT_CODE4
	LEFT OUTER JOIN
              NL_CATEGORY CategoryFive ON 
	      NOne.NCATEGORYCODE5 = CategoryFive.NL_CAT_CODE5
	LEFT OUTER JOIN
              NL_CATEGORY CategorySix ON 
	      NOne.NCATEGORYCODE6 = CategorySix.NL_CAT_CODE6
	LEFT OUTER JOIN
              NL_CATEGORY CategorySeven ON 
	      NOne.NCATEGORYCODE7 = CategorySeven.NL_CAT_CODE7
	LEFT OUTER JOIN
              NL_CATEGORY CategoryEight ON 
	      NOne.NCATEGORYCODE8 = CategoryEight.NL_CAT_CODE8
