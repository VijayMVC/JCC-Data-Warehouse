﻿create view AA_CB_BANK_VIEW
/*
** Written:      11/05/05 NC
** Last Amended: 03/06/05 NC
*/
as

select 
   N_PRIMARY as [PRIMARY],
   NCODE,
   charindex(NTYPE,'BCDP') as NTYPE, -- B or P
   NNAME,
   NCURRENCYCODE,
   CURREC_DESCRIPTION,
   (select top 1 DET_RECON_REF from 
   (  select top 1 DET_RECON_REF,DET_DATE from SL_PL_NL_DETAIL where DET_RECONCILED=1 and NCODE =DET_NOMINALDR and N_RECON_COUNTER=DT_RECON_ORDER
    union
      select top 1 DET_RECON_REF,DET_DATE from SL_PL_NL_DETAIL where DET_RECONCILED=1 and NCODE =DET_NOMINALCR and N_RECON_COUNTER=DT_RECON_ORDER
    union
      select top 1 DET_RECON_REF,DET_DATE from SL_PL_NL_DETAIL where DET_RECONCILED=1 and NCODE =DET_NOMINALVAT and N_RECON_COUNTER=DT_RECON_ORDER
         ) as LastStatements order by DET_DATE desc)
      as LAST_STATMENT_REF
from 
   NL_ACCOUNTS
   inner join SYS_CURRENCY_REC   on NCURRENCYCODE = SYS_CURRENCY_REC.CURREC_SYMBOL