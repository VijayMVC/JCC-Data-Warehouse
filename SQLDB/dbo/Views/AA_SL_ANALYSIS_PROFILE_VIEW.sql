﻿CREATE VIEW AA_SL_ANALYSIS_PROFILE_VIEW
/*
** Written:     06/01/2003 PAULT   
** Last Amended: 03/03/2003 - Referencing incorrect field position for TURNOVERSUMMARY and CUSTOMISEUSERTAB 
** Comments: Returns Security Profile settings for Sales Analysis Records
*/
As
Select
UP_CODE as PROFILECODE, UP_MODULE as PROFILEMODULE,
Cast(Substring(UP_RECORDMASK, 2, 1) As tinyint) As ALLOWEDACCESS,
(Case 
   When Substring(UP_REC_OPTIONS2, 1, 1) = 'Y' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As [INSERT],
(Case 
   When Substring(UP_REC_OPTIONS2, 2, 1) = 'Y' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As EDIT,
(Case 
   When Substring(UP_REC_OPTIONS2, 3, 1) = 'Y' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As [DELETE],
(Case 
   When Substring(UP_REC_OPTIONS2, 4, 1) = 'X' Then Cast(0 as tinyint)
   Else Cast(1 as tinyint)
   End)
As VIEWINFO,
(Case 
   When Substring(UP_REC_OPTIONS2, 4, 1) = 'F' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As EDITINFO,
(Case 
   When Substring(UP_REC_OPTIONS2, 5, 1) = 'Y' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As SETDEFAULTS,
(Case 
   When Substring(UP_REC_OPTIONS2, 6, 1) = 'X' Then Cast(0 as tinyint)
   Else Cast(1 as tinyint)
   End)
As VIEWTRANSACTIONS,
(Case 
   When Substring(UP_REC_OPTIONS2, 6, 1) = 'F' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As EDITTRANSACTIONS,
(Case 
   When Substring(UP_REC_OPTIONS2, 7, 1) = 'Y' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As TURNOVERSUMMARY,
(Case 
   When Substring(UP_REC_OPTIONS2, 8, 1) = 'Y' Then Cast(1 as tinyint)
   Else Cast(0 as tinyint)
   End)
As CUSTOMISEUSERTAB,
UP_LEVEL_RECENTRY2 AS ENTERAMENDLEVEL,
UP_LEVEL_RECVIEW2 AS WORKWITHLEVEL,
UP_LEVEL_EXACT2 As EXACTLEVEL
From SYS_USER_PROFILE
Where UP_MODULE = 'SL'


