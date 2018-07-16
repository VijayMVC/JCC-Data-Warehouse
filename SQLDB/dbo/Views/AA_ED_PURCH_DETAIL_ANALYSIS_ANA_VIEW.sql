﻿CREATE VIEW AA_ED_PURCH_DETAIL_ANALYSIS_ANA_VIEW
AS
SELECT     DET_ANALYSIS, PANAME, PASORT, PAUSER1, PAUSER2, PAUSER3, dbo.SL_PL_NL_DETAIL.DET_ACCOUNT, dbo.PL_ACCOUNTS.SUNAME, 
                      dbo.PL_ACCOUNTS.SUSORT AS SUPPLIER_SORT_KEY, dbo.PL_ACCOUNTS.SUUSER1 AS SUPPLIER_SORT_KEY1, 
                      dbo.PL_ACCOUNTS.SUUSER2 AS SUPPLIER_SORT_KEY2, dbo.PL_ACCOUNTS.SUUSER3 AS SUPPLIER_SORT_KEY3, 
                      dbo.SL_PL_NL_DETAIL.DET_PRIMARY, dbo.SL_PL_NL_DETAIL.DET_HEADER_KEY, dbo.SL_PL_NL_DETAIL.DET_PERIODNUMBR, 
                      dbo.SL_PL_NL_DETAIL.DET_YEAR, dbo.SL_PL_NL_DETAIL.DET_DATE, dbo.SL_PL_NL_DETAIL.DET_ORIGIN, DET_COSTHEADER, DET_COSTCENTRE, 
                      (CASE DET_TYPE WHEN 'INV' THEN DET_QUANTITY WHEN 'CRN' THEN DET_QUANTITY * - 1 END) AS TRAN_QUANTITY, 
                      (CASE DET_TYPE WHEN 'INV' THEN DET_NETT WHEN 'CRN' THEN DET_NETT * - 1 END) AS TRAN_NET, 
                      (CASE DET_TYPE WHEN 'INV' THEN DET_VAT WHEN 'CRN' THEN DET_VAT * - 1 END) AS TRAN_VAT, 
                      (CASE DET_TYPE WHEN 'INV' THEN DET_GROSS WHEN 'CRN' THEN DET_GROSS * - 1 END) AS TRAN_GROSS, 
                      (CASE DET_TYPE WHEN 'INV' THEN DET_COSTPRICE WHEN 'CRN' THEN DET_COSTPRICE * - 1 END) AS TRAN_COSTPRICE
FROM         PL_ACCOUNTS INNER JOIN
                      SL_PL_NL_DETAIL ON SUCODE = DET_ACCOUNT INNER JOIN
                      PL_ANALYSIS ON PACODE = DET_ANALYSIS
WHERE     (DET_TYPE = 'INV' OR
                      DET_TYPE = 'CRN') AND DET_LEDGER = 'PL'