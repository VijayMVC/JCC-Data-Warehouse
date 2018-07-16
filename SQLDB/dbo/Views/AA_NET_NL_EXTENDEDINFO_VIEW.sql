﻿CREATE VIEW AA_NET_NL_EXTENDEDINFO_VIEW
AS 
/*
** Returns data to be used in the .NET Nominal list Extended Information
** Written:      28/02/03 SRB, 19/04/06 SRB
** Last Amended: 
**
*/
select 
NCODE
,NTURNOVERPTD
,NTURNOVERYTD
,NCATEGORYCODE1
,NCATEGORYCODE2
,NCATEGORYCODE3
,NCATEGORYCODE4
,NCATEGORYCODE5
,NCATEGORYCODE6
,NCATEGORYCODE7
,NCATEGORYCODE8
,BUDGETPTD
,BUDGETYTD
,N_FORCE_COSTING
,NCURRENCYCODE
,dbo.AA_VALUE_DPS_F(
	CASE WHEN COALESCE(NTURNOVERPTD,0) != 0 AND COALESCE(BUDGETPTD,0) != 0 THEN
		BUDGETPTD - NTURNOVERPTD
	ELSE
		0
	END 
)
AS
DIFFERENCEPTD,
--Difference PTD Percentage
dbo.AA_TWO_DPS_F(
	CASE WHEN COALESCE(NTURNOVERPTD,0) != 0 AND COALESCE(BUDGETPTD,0) != 0 THEN
		(NTURNOVERPTD * 100)
		/
		(
		CASE 
		 WHEN BUDGETPTD=0 THEN 1
		 WHEN BUDGETPTD IS NULL THEN 1		
		 ELSE
		      BUDGETPTD
		END
		) - 100
	ELSE
		0
	END 
)
AS
DIFFERENCEPERCPTD,

-- Difference YTD
dbo.AA_VALUE_DPS_F(
	CASE WHEN COALESCE(BUDGETYTD,0) != 0 THEN
		BUDGETYTD - NTURNOVERYTD
	ELSE
		0
	END 
)
AS
DIFFERENCEYTD,
--Difference YTD Percentage
dbo.AA_TWO_DPS_F(
	CASE WHEN COALESCE(NTURNOVERYTD,0) != 0 AND COALESCE(BUDGETYTD,0) != 0 THEN
		(NTURNOVERYTD * 100)
		/
		(
		CASE 
		 WHEN BUDGETYTD=0 THEN 1
		 WHEN BUDGETYTD IS NULL THEN 1		
		 ELSE
		      BUDGETYTD
		END
		) - 100
	ELSE
		0
	END 
)
AS
DIFFERENCEPERCYTD
from nl_accounts inner join AA_NET_NL_RECORD_VIEW_CALCS
on NCODE = NOMINALCODE


