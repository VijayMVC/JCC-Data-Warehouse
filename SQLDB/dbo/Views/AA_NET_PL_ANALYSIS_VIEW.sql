﻿CREATE VIEW AA_NET_PL_ANALYSIS_VIEW
/*
** Written:        09/12/02 ROBB
** Last Amended:   20/12/02 ROBB; 14/01/03 SRB ; 16/01/03 SRB
*/
AS
select PACODE,
PANAME,
PASORT,
PAVATCODE,
dbo.AA_TWO_DPS_F(VAT_RATE) as VAT_RATE,
PACURRENCYSYMBL,
CURREC_DESCRIPTION,
PANOMINALDR,
NominalOne.NNAME
as
PANOMINALDRNAME,
PANOMINALCR,
NominalTwo.NNAME
as
PANOMINALCRNAME,
PANOMINALVAT,
NominalThree.NNAME
as
PANOMINALVATNAME,
PATYPE_P_B_D,
case
	when (PATYPE_P_B_D = 'B' AND PADEFAULT_BANK = 1) 
		then 1
	when (PATYPE_P_B_D = 'P' AND PADEFAULT_PURCH = 1) 
		then 1
	else 0
end 
as
PADEFAULT,
PA_LEVEL,
PA_DATE_PUTIN,
PA_DATE_EDITED,
PALANDEDCOST,
PA_FORCE_COSTING,
PA_ANALYSIS_MATRIX,
PANOTES,
PATURNOVERPTD,
PATURNOVERYTD,
PA_USRCHAR1,
PA_USRCHAR2,
PA_USRCHAR5,
PA_USRCHAR6,
PA_USRCHAR7,
PA_USRCHAR8,
PA_USRDATE1,
PA_USRDATE2,
PA_USRDATE3,
PA_USRFLAG1,
PA_USRFLAG2,
PA_USRFLAG3,
PA_USRNUM1,
PA_USRNUM2,
PA_USRNUM3,
PA_PRIMARY,
PAUSED,
PADEFAULT_ROUNDING

from PL_ANALYSIS
	left outer join PL_ANALYSIS2
	on PL_ANALYSIS.PACODE = PL_ANALYSIS2.PACODE2
	left outer join SYS_VATCONTROL
	on PL_ANALYSIS.PAVATCODE = SYS_VATCONTROL.VAT_CODE
	inner join SYS_CURRENCY_REC
	on PL_ANALYSIS.PACURRENCYSYMBL = SYS_CURRENCY_REC.CURREC_SYMBOL
	left outer join NL_ACCOUNTS NominalOne 
	on PL_ANALYSIS.PANOMINALDR = NominalOne.NCODE
	left outer join NL_ACCOUNTS NominalTwo 
	on PL_ANALYSIS.PANOMINALCR = NominalTwo.NCODE
	left outer join NL_ACCOUNTS NominalThree 
	on PL_ANALYSIS.PANOMINALVAT = NominalThree.NCODE



