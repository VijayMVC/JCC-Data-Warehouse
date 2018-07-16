﻿CREATE VIEW dbo.AA_ED_SUPPLIER_RECS_VIEW
AS
select SUCODE,SUNAME,SUSORT,SUUSER1,SUUSER2,SUUSER3,SUPOSTCODE,SUPHONE,SUFAX,SUCONTACT,SUBALANCE,
CAST(
CASE PURCHASE_PERIOD
	WHEN 1 THEN SUTURNOVR_C1
	WHEN 2 THEN SUTURNOVR_C2
	WHEN 3 THEN SUTURNOVR_C3
	WHEN 4 THEN SUTURNOVR_C4
	WHEN 5 THEN SUTURNOVR_C5
	WHEN 6 THEN SUTURNOVR_C6
	WHEN 7 THEN SUTURNOVR_C7
	WHEN 8 THEN SUTURNOVR_C8
	WHEN 9 THEN SUTURNOVR_C9
	WHEN 10 THEN SUTURNOVR_C10
	WHEN 11 THEN SUTURNOVR_C11
	WHEN 12 THEN SUTURNOVR_C12
	WHEN 13 THEN SUTURNOVR_C13
END as float) AS PTD_SURRENT_YEAR,
CAST(CASE PURCHASE_PERIOD
	WHEN 1 THEN SUTURNOVR_L1
	WHEN 2 THEN SUTURNOVR_L2
	WHEN 3 THEN SUTURNOVR_L3
	WHEN 4 THEN SUTURNOVR_L4
	WHEN 5 THEN SUTURNOVR_L5
	WHEN 6 THEN SUTURNOVR_L6
	WHEN 7 THEN SUTURNOVR_L7
	WHEN 8 THEN SUTURNOVR_L8
	WHEN 9 THEN SUTURNOVR_L9
	WHEN 10 THEN SUTURNOVR_L10
	WHEN 11 THEN SUTURNOVR_L11
	WHEN 12 THEN SUTURNOVR_L12
	WHEN 13 THEN SUTURNOVR_L13
END AS FLOAT) AS PTD_LAST_YEAR,
CAST(CASE PURCHASE_PERIOD
	WHEN 1 THEN SUTURNOVR_O1
	WHEN 2 THEN SUTURNOVR_O2
	WHEN 3 THEN SUTURNOVR_O3
	WHEN 4 THEN SUTURNOVR_O4
	WHEN 5 THEN SUTURNOVR_O5
	WHEN 6 THEN SUTURNOVR_O6
	WHEN 7 THEN SUTURNOVR_O7
	WHEN 8 THEN SUTURNOVR_O8
	WHEN 9 THEN SUTURNOVR_O9
	WHEN 10 THEN SUTURNOVR_O10
	WHEN 11 THEN SUTURNOVR_O11
	WHEN 12 THEN SUTURNOVR_O12
	WHEN 13 THEN SUTURNOVR_O13
END AS FLOAT) AS PTD_PREV_YEAR,
CAST(CASE PURCHASE_PERIOD
	WHEN 1 THEN SUTURNOVR_C1
	WHEN 2 THEN SUTURNOVR_C1+SUTURNOVR_C2
	WHEN 3 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3
	WHEN 4 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4
	WHEN 5 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5
	WHEN 6 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6
	WHEN 7 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6+SUTURNOVR_C7
	WHEN 8 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6+SUTURNOVR_C7+SUTURNOVR_C8
	WHEN 9 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6+SUTURNOVR_C7+SUTURNOVR_C8+SUTURNOVR_C9
	WHEN 10 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6+SUTURNOVR_C7+SUTURNOVR_C8+SUTURNOVR_C9+SUTURNOVR_C10
	WHEN 11 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6+SUTURNOVR_C7+SUTURNOVR_C8+SUTURNOVR_C9+SUTURNOVR_C10+SUTURNOVR_C11
	WHEN 12 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6+SUTURNOVR_C7+SUTURNOVR_C8+SUTURNOVR_C9+SUTURNOVR_C10+SUTURNOVR_C11+SUTURNOVR_C12
	WHEN 13 THEN SUTURNOVR_C1+SUTURNOVR_C2+SUTURNOVR_C3+SUTURNOVR_C4+SUTURNOVR_C5+SUTURNOVR_C6+SUTURNOVR_C7+SUTURNOVR_C8+SUTURNOVR_C9+SUTURNOVR_C10+SUTURNOVR_C11+SUTURNOVR_C12+SUTURNOVR_C13
END AS FLOAT) AS YTD_SURRENT_YEAR,
CAST(CASE PURCHASE_PERIOD
	WHEN 1 THEN SUTURNOVR_L1
	WHEN 2 THEN SUTURNOVR_L1+SUTURNOVR_L2
	WHEN 3 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3
	WHEN 4 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4
	WHEN 5 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5
	WHEN 6 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6
	WHEN 7 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6+SUTURNOVR_L7
	WHEN 8 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6+SUTURNOVR_L7+SUTURNOVR_L8
	WHEN 9 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6+SUTURNOVR_L7+SUTURNOVR_L8+SUTURNOVR_L9
	WHEN 10 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6+SUTURNOVR_L7+SUTURNOVR_L8+SUTURNOVR_L9+SUTURNOVR_L10
	WHEN 11 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6+SUTURNOVR_L7+SUTURNOVR_L8+SUTURNOVR_L9+SUTURNOVR_L10+SUTURNOVR_L11
	WHEN 12 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6+SUTURNOVR_L7+SUTURNOVR_L8+SUTURNOVR_L9+SUTURNOVR_L10+SUTURNOVR_L11+SUTURNOVR_L12
	WHEN 13 THEN SUTURNOVR_L1+SUTURNOVR_L2+SUTURNOVR_L3+SUTURNOVR_L4+SUTURNOVR_L5+SUTURNOVR_L6+SUTURNOVR_L7+SUTURNOVR_L8+SUTURNOVR_L9+SUTURNOVR_L10+SUTURNOVR_L11+SUTURNOVR_L12+SUTURNOVR_L13
END AS FLOAT) AS YTD_LAST_YEAR,
CAST(CASE PURCHASE_PERIOD
	WHEN 1 THEN SUTURNOVR_O1
	WHEN 2 THEN SUTURNOVR_O1+SUTURNOVR_O2
	WHEN 3 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3
	WHEN 4 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4
	WHEN 5 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5
	WHEN 6 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6
	WHEN 7 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6+SUTURNOVR_O7
	WHEN 8 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6+SUTURNOVR_O7+SUTURNOVR_O8
	WHEN 9 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6+SUTURNOVR_O7+SUTURNOVR_O8+SUTURNOVR_O9
	WHEN 10 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6+SUTURNOVR_O7+SUTURNOVR_O8+SUTURNOVR_O9+SUTURNOVR_O10
	WHEN 11 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6+SUTURNOVR_O7+SUTURNOVR_O8+SUTURNOVR_O9+SUTURNOVR_O10+SUTURNOVR_O11
	WHEN 12 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6+SUTURNOVR_O7+SUTURNOVR_O8+SUTURNOVR_O9+SUTURNOVR_O10+SUTURNOVR_O11+SUTURNOVR_O12
	WHEN 13 THEN SUTURNOVR_O1+SUTURNOVR_O2+SUTURNOVR_O3+SUTURNOVR_O4+SUTURNOVR_O5+SUTURNOVR_O6+SUTURNOVR_O7+SUTURNOVR_O8+SUTURNOVR_O9+SUTURNOVR_O10+SUTURNOVR_O11+SUTURNOVR_O12+SUTURNOVR_O13
END AS FLOAT) AS YTD_PREV_YEAR
FROM PL_ACCOUNTS join SYS_DATAINFO on sys_primary = 1