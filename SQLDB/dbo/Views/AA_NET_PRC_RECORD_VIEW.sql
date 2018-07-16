﻿CREATE VIEW AA_NET_PRC_RECORD_VIEW
/*
** Written:        09/12/02 ROBB
** Last Amended:   15/01/03 NC, 11/02/03 ROBB
*/
AS
select
PRCODE,
PRNAME,
PR_SORT_KEY,
PR_TEXT,
dbo.AA_PRICE_DPS_F(PR_PRICE) AS PR_PRICE,
dbo.AA_PRICE_DPS_F(PR_PRICE_BASE2) AS PR_PRICE_BASE2,
dbo.AA_PRICE_DPS_F(PR_BASE_COST) AS PR_BASE_COST,
dbo.AA_PRICE_DPS_F(PR_BASE_COST_BASE2) AS PR_BASE_COST_BASE2,
PR_S_ANALYSIS,
SANAME,
PR_P_ANALYSIS,
PANAME,
PR_NOTES,
PR_RTP_FLAG,
PR_LINK_FLAG,
PR_EC_KILOS,
PR_EC_ORIGIN,
PR_EC_COM_CODE,
PR_EC_SUP_UNIT,
PR_LEVEL,
PR_DATE_PUTIN,
PR_DATE_EDITED,
PR_USRCHAR1,
PR_USRCHAR2,
PR_USRCHAR5,
PR_USRCHAR6,
PR_USRCHAR7,
PR_USRCHAR8,
PR_USRFLAG1,
PR_USRFLAG2,
PR_USRFLAG3,
PR_USRDATE1,
PR_USRDATE2,
PR_USRDATE3,
PR_USRNUM1,
PR_USRNUM2,
PR_USRNUM3,
PR_PRIMARY,
PR_USED
from PRC_PRICE_RECS
	left outer join PRC_PRICE_RECS2
	on PRC_PRICE_RECS.PRCODE = PRC_PRICE_RECS2.PRCODE2
	join SL_ANALYSIS
	on PRC_PRICE_RECS.PR_S_ANALYSIS = SL_ANALYSIS.SACODE
	join PL_ANALYSIS
	on PRC_PRICE_RECS.PR_P_ANALYSIS = PL_ANALYSIS.PACODE
where  PR_TYPE != 'R' or PR_TYPE is NULL

