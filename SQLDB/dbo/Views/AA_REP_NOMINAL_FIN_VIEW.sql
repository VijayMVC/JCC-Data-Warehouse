﻿CREATE VIEW AA_REP_NOMINAL_FIN_VIEW
AS
SELECT     

/*
case when NL_MAJORHEADING.NL_MAJORCODE <= 9
	then char(32) + cast (NL_MAJORHEADING.NL_MAJORCODE as varchar(3)) 
	else cast (NL_MAJORHEADING.NL_MAJORCODE as varchar(4))
end as NL_MAJORCODE,
*/
NL_MAJORHEADING.NL_MAJORCODE,

NL_MAJORHEADING.NL_MAJORNAME,

NL_ACCOUNTS.NCODE, 
NL_ACCOUNTS.NNAME, 
NL_ACCOUNTS.NCURRENCYCODE, 
NL_ACCOUNTS.NOPENBALYEAR, 
NL_ACCOUNTS.NOPENBALYR_C, 
NL_ACCOUNTS.NTURNOVERLY, 
NL_ACCOUNTS.NTURNOVRLY_C, 
NL_ACCOUNTS.NCATEGORYCODE1,                    
NL_ACCOUNTS.NCATEGORYCODE2, 
NL_ACCOUNTS.NCATEGORYCODE3, 
NL_ACCOUNTS.NCATEGORYCODE4, 
NL_ACCOUNTS.NCATEGORYCODE5, 
NL_ACCOUNTS.NCATEGORYCODE6, 
NL_ACCOUNTS.NCATEGORYCODE7, 
NL_ACCOUNTS.NCATEGORYCODE8,                    
NL_ACCOUNTS.NOPENBALANCELY, 
NL_ACCOUNTS.NOPENBALANCLY_C, 
NL_ACCOUNTS.NTURNOVER_C1 + NL_ACCOUNTS.NTURNOVER_C2 + NL_ACCOUNTS.NTURNOVER_C3 +
NL_ACCOUNTS.NTURNOVER_C4 + NL_ACCOUNTS.NTURNOVER_C5 +
NL_ACCOUNTS.NTURNOVER_C6 + NL_ACCOUNTS.NTURNOVER_C7 + NL_ACCOUNTS.NTURNOVER_C8 + 
NL_ACCOUNTS.NTURNOVER_C9 + NL_ACCOUNTS.NTURNOVER_C10 + NL_ACCOUNTS.NTURNOVER_C11 + 
NL_ACCOUNTS.NTURNOVER_C12 + NL_ACCOUNTS.NTURNOVER_C13 AS NTURNOVER_CURYR, 
NL_ACCOUNTS.NTURNOVER_C1_C + NL_ACCOUNTS.NTURNOVER_C2_C + NL_ACCOUNTS.NTURNOVER_C3_C +
NL_ACCOUNTS.NTURNOVER_C4_C + NL_ACCOUNTS.NTURNOVER_C5_C +
NL_ACCOUNTS.NTURNOVER_C6_C + NL_ACCOUNTS.NTURNOVER_C7_C + NL_ACCOUNTS.NTURNOVER_C8_C + 
NL_ACCOUNTS.NTURNOVER_C9_C + NL_ACCOUNTS.NTURNOVER_C10_C + NL_ACCOUNTS.NTURNOVER_C11_C + 
NL_ACCOUNTS.NTURNOVER_C12_C + NL_ACCOUNTS.NTURNOVER_C13_C AS NTURNOVER_CURYR_C


FROM NL_MAJORHEADING

Left OUTER JOIN NL_ACCOUNTS
	ON NL_ACCOUNTS.NMAJORHEADCODE = NL_MAJORHEADING.NL_MAJORCODE And N_EXCLUDE_RECREP <> 1 

