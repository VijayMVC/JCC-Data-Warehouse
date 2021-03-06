﻿create view AA_CST_OPTIONS_VIEW
/*
** Returns Costing Options.
**
** Written:     01/04/04 SRB 
** Last Amended: 23/07/04 SRB; 08/10/2004 ROBB; 13/12/2005 SRB, 30/01/2006 SH, 14/03/2006 SH, 06/04/2006 SH, 13/04/2006 SH, 25/05/2006 SH
*/
as

select
      AUTO_NUMBR_JOB
      ,NEXT_JOB_NUMBR
      ,CST_DEF_RECSTAT
      ,CST_UPLIFT_TYPE
      ,CST_HEADER_UPD
      ,CST_RESORCE_UPD
      ,CST_PAY_ANALYSE
      ,CST_PAY_USERATE
      ,CST_PAY_MAKERSC
      ,CST_ANALYSE_BY
      ,CST_WIP_UPD_TO_NOMINAL
      ,CST_OBUDG_REV1_ONLY
      ,CST_MARKUP_TYPE
      ,case isnull(CST_MAIN_TIMESHEET_RATE_TYPE, '')
         when 'P' then 0 -- Project
         when 'C' then 1 -- Cost Centre
         else 2 -- Resource
      end as CST_MAIN_TIMESHEET_RATE_TYPE
      ,isnull(CST_INVOICEABLE_VALUE_CALC_OPT, 0) as CST_INVOICEABLE_VALUE_CALC_OPT
      ,FIRSTWEEK_DAYS
      ,CST_WORKING_HOURS_IN_DAY
      ,CST_WORKING_DAYS_IN_WEEK
      ,isnull(CST_SALES_SL_ANALYSIS_LINK,0) as CST_DEFAULT_SALES_ANALYSIS_LINK
      ,isnull(S.SACODE,'') as CST_DEFAULT_SALES_ANALYSIS_CODE
      ,isnull(S.SANAME,'') as CST_DEFAULT_SALES_ANALYSIS_NAME
      ,isnull(CST_WIP_SL_ANALYSIS_LINK,0) as CST_DEFAULT_WIP_ANALYSIS_LINK
      ,isnull(S1.SACODE,'') as CST_DEFAULT_WIP_ANALYSIS_CODE
      ,isnull(S1.SANAME,'') as CST_DEFAULT_WIP_ANALYSIS_NAME
      ,isnull(CST_COST_PL_ANALYSIS_LINK,0) as CST_DEFAULT_COST_ANALYSIS_LINK
      ,isnull(P.PACODE,'') as CST_DEFAULT_COST_ANALYSIS_CODE
      ,isnull(P.PANAME,'') as CST_DEFAULT_COST_ANALYSIS_NAME
      ,isnull(CST_INCOME_SL_ANALYSIS_LINK,0) as CST_DEFAULT_INCOME_ANALYSIS_LINK
      ,isnull(S2.SACODE,'') as CST_DEFAULT_INCOME_ANALYSIS_CODE
      ,isnull(S2.SANAME,'') as CST_DEFAULT_INCOME_ANALYSIS_NAME
      ,case isnull(B.CB_PRIMARY,0) when 0 then 1 else 0 end as ALLOW_CHANGE_ANALYSE_BY
      ,HOME_CURR_SYMBL

   from SYS_DATAINFO D
      inner join SYS_DATAINFO2 D2 on D2.SYS_PRIMARY_2 = D.SYS_PRIMARY
      inner join SYS_DATAINFO3 D3 on D3.SYS_PRIMARY_3 = D.SYS_PRIMARY
      left join SL_ANALYSIS S on S.SA_PRIMARY = D3.CST_SALES_SL_ANALYSIS_LINK
      left join SL_ANALYSIS S1 on S1.SA_PRIMARY = D3.CST_WIP_SL_ANALYSIS_LINK
      left join SL_ANALYSIS S2 on S2.SA_PRIMARY = D3.CST_INCOME_SL_ANALYSIS_LINK
      left join PL_ANALYSIS P on P.PA_PRIMARY = D3.CST_COST_PL_ANALYSIS_LINK
      left join (select top 1 CB_PRIMARY from CST_BUDGET_REVISION) B on B.CB_PRIMARY > 0