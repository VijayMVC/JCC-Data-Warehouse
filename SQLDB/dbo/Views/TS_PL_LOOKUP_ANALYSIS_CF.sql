﻿CREATE VIEW TS_PL_LOOKUP_ANALYSIS_CF AS
-- TS_PL_LOOKUP_ANALYSIS_CF Version 1
-- Written by Paul McNamara 12/01/2010
-- View used by custom forms analysis lookup
-- Version History:
-- v1 – Initial version created by Paul McNamara 12/01/2010 for use with FP version 3.6.06
SELECT
PACODE 'Code',
PANAME 'Name',
PASORT 'Sort Key', 
PA_USRCHAR1 'User Char 1',
PA_USRCHAR2 'User Char 2',
PA_USRCHAR3 'User Char 3', 
PA_USRCHAR4 'User Char 4',
PA_USRCHAR5 'User Char 5', 
PA_USRCHAR6 'User Char 6',
PA_USRCHAR1 '__USRCHAR1',
PA_USRCHAR2 '__USRCHAR2',
PA_USRCHAR5 '__USRCHAR5', 
PA_USRCHAR6 '__USRCHAR6',
PA_USRCHAR7 '__USRCHAR7', 
PA_USRCHAR8 '__USRCHAR8',
PASORT '__SORT',
PACODE '__CODE',
PANAME '__NAME',
PACURRENCYSYMBL '__CURR_SYMBOL',
PA_FORCE_COSTING '__FORCE_COSTING',
NCATEGORYCODE1 '__NCATEGORYCODE1',
NCATEGORYCODE2 '__NCATEGORYCODE2',
NCATEGORYCODE3 '__NCATEGORYCODE3',
NCATEGORYCODE4 '__NCATEGORYCODE4',
NCATEGORYCODE5 '__NCATEGORYCODE5',
NCATEGORYCODE6 '__NCATEGORYCODE6',
NCATEGORYCODE7 '__NCATEGORYCODE7',
NCATEGORYCODE8 '__NCATEGORYCODE8'
FROM PL_ANALYSIS 
LEFT JOIN NL_ACCOUNTS ON PANOMINALDR = NCODE
LEFT JOIN PL_ANALYSIS2 ON PA_PRIMARY = PA_PRIMARY_2
WHERE (PATYPE_P_B_D = 'P') AND (PADEFAULT_ROUNDING = 0) AND PA_DO_NOT_USE = 0