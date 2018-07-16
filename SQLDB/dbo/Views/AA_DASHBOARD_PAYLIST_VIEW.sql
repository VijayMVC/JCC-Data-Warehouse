﻿CREATE VIEW AA_DASHBOARD_PAYLIST_VIEW

/*
**       
**  Written:	   Taken from AOI source code as at 25/10/07  
**  Last Amended:  14/11/2007 OC - fix to allow view to show stage 2 values
*/

AS

SELECT     TOP 100 PERCENT dbo.SYS_USER.USER_ID, ISNULL(dbo.PL_TRANSACTIONS.PT_PAYLIST_REF, '') AS PT_PAYLIST_REF,     	
			
			
			Case dbo.PL_TRANSACTIONS.PT_TRANTYPE
				WHEN 'PAY' THEN SUM((dbo.PL_TRANSACTIONS.PT_PAYLIST_VALUE * -1))
				WHEN 'CRN' THEN SUM((dbo.PL_TRANSACTIONS.PT_PAYLIST_VALUE * -1))
				WHEN 'ADR' THEN SUM((dbo.PL_TRANSACTIONS.PT_PAYLIST_VALUE * -1))
			ELSE
				SUM(dbo.PL_TRANSACTIONS.PT_PAYLIST_VALUE)
			END AS PT_PAYLIST_VALUE,

			SUM(dbo.PL_TRANSACTIONS.PT_UNALLOCATED) AS PT_UNALLOCATED, 
                      COUNT(*) AS RECS, dbo.PL_TRANSACTIONS.PT_PAY_STAGE_STATUS, dbo.PL_TRANSACTIONS.PT_CURRENCYCODE
FROM         dbo.SYS_USER INNER JOIN
                      dbo.SYS_USER_PROFILE ON dbo.SYS_USER.USER_PROFILE_CODE = dbo.SYS_USER_PROFILE.UP_CODE CROSS JOIN
                      dbo.PL_TRANSACTIONS CROSS JOIN
                      dbo.SYS_DATAINFO2
WHERE     (dbo.SYS_USER_PROFILE.UP_MODULE = 'PL') AND (SUBSTRING(dbo.SYS_USER_PROFILE.UP_TRAN_OPTIONS8, 3, 1) = 'Y') AND 
                      (SUBSTRING(dbo.SYS_USER_PROFILE.UP_TRAN_OPTIONS8, 4, 1) = 'N') AND (dbo.SYS_DATAINFO2.PL_PAYMENT_STAGES > 0) AND 
                      (dbo.PL_TRANSACTIONS.PT_PAYLIST_VALUE <> 0) AND (dbo.PL_TRANSACTIONS.PT_PAY_STAGE_STATUS = 0) OR

                      (dbo.SYS_USER_PROFILE.UP_MODULE = 'PL') AND (SUBSTRING(dbo.SYS_USER_PROFILE.UP_TRAN_OPTIONS8, 3, 1) = 'N') AND 
                      (SUBSTRING(dbo.SYS_USER_PROFILE.UP_TRAN_OPTIONS8, 4, 1) = 'Y') AND (dbo.SYS_DATAINFO2.PL_PAYMENT_STAGES > 1) AND
                      (dbo.PL_TRANSACTIONS.PT_PAYLIST_VALUE <> 0) AND (dbo.PL_TRANSACTIONS.PT_PAY_STAGE_STATUS = 1) OR

                      (dbo.SYS_USER_PROFILE.UP_MODULE = 'PL') AND (SUBSTRING(dbo.SYS_USER_PROFILE.UP_TRAN_OPTIONS8, 3, 1) = 'Y') AND 
                      (SUBSTRING(dbo.SYS_USER_PROFILE.UP_TRAN_OPTIONS8, 4, 1) = 'Y') AND (dbo.SYS_DATAINFO2.PL_PAYMENT_STAGES > 0) AND 
                      (dbo.PL_TRANSACTIONS.PT_PAYLIST_VALUE <> 0) AND (dbo.PL_TRANSACTIONS.PT_PAY_STAGE_STATUS <= 2)
		AND (dbo.PL_TRANSACTIONS.PT_PAY_STAGE_STATUS <= dbo.SYS_DATAINFO2.PL_PAYMENT_STAGES )		

GROUP BY dbo.SYS_USER.USER_ID, dbo.PL_TRANSACTIONS.PT_PAYLIST_REF, dbo.PL_TRANSACTIONS.PT_PAY_STAGE_STATUS, 
                      dbo.PL_TRANSACTIONS.PT_CURRENCYCODE,dbo.PL_TRANSACTIONS.PT_TRANTYPE
ORDER BY dbo.PL_TRANSACTIONS.PT_PAYLIST_REF