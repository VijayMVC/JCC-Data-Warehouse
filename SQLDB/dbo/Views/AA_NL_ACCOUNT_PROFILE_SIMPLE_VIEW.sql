﻿create view AA_NL_ACCOUNT_PROFILE_SIMPLE_VIEW
/*
** Returns a table to be used specifically with AA_NL_ACCOUNT_PROFILE_LIST_S
** Written: 06/01/2005 SH
** Last Amended: 03/03/2005 SRB; 15/03/2005 SRB; 16/03/2005 SRB; 24/03/2005 SRB
**
*/

as

select P.NP_PRIMARY as [PRIMARY],
	P.NP_COPYNCODE,
	PR.NNAME as NP_COPYNNAME,
	PR.NCURRENCYCODE,
	P.NP_PROFILECODE,
	N.NNAME,
	dbo.AA_FOUR_DPS_F(P.NP_PERCENTAGE) as NP_PERCENTAGE,
	P.NP_DATE_PUTIN,
	P.NP_DATE_EDITED,
	P.NP_USER_PUTIN,
	PR.N_PROFILE_NL,
	PR.N_PROFILE_PL,
	PR.N_PROFILE_SL,
	PR.N_PROFILE_WARN,
	PR.N_PRIMARY,
	isnull( P.NP_USER_EDITED, '' ) as NP_USER_EDITED

from NL_PROFILE P
	inner join NL_ACCOUNTS N on N.NCODE = NP_PROFILECODE --Profile Details
	inner join NL_ACCOUNTS PR on PR.NCODE = P.NP_COPYNCODE --Profiled Account Details

