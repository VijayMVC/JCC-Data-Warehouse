﻿CREATE VIEW AA_NET_RTP_DETAIL_TRAN_VIEW
/*
** Written:        23/04/03 ROBB
** Last Amended:   25/04/03 ROBB; 28/04/03 ROBB; 21/07/03 SRB
*/
AS

SELECT

RPD_STATUS,
RPD_ENTRY_TYPE,
RPD_ORDER_NO,
PIC_PATHNAME,
(case when RPD_ENTRY_TYPE in ('S','P')
then
	case when RPD_ENTRY_TYPE ='S'
		then
			RPD_STOCK_CODE
		else
			RPD_PRICE_CODE
		end
else
	''
end)
as ITEM_CODE,
(case when RPD_ENTRY_TYPE in ('S','P')
then
	case when RPD_ENTRY_TYPE ='S'
		then
			STKNAME
		else
			PRNAME
		end
else
	''
end) AS ITEM_DESC,
RPD_SERIALNO,
RPD_LOCATN,
dbo.AA_QUANTITY_DPS_F(RPD_QTYORD) AS RPD_QTYORD,
dbo.AA_QUANTITY_DPS_F(RPD_QTYUNIT) AS RPD_QTYUNIT,
dbo.AA_VALUE_DPS_F(RPD_NETT) AS RPD_NETT,
dbo.AA_VALUE_DPS_F(RPD_NETT_C) AS RPD_NETT_C,

dbo.AA_VALUE_DPS_F(RPD_UNITCST) AS RPD_UNITCST,
dbo.AA_VALUE_DPS_F(RPD_UNITCST_C) AS RPD_UNITCST_C,

RPD_DETAIL,
RPD_REQDATE,
substring(RPD_TABLECODE,2,2)
AS PRICELINE,
RPD_DIMENSION1,
RPD_DIMENSION2,
RPD_DIMENSION3,
STK_PHYSICAL,
RPD_SERIALTRACK,
(case when RPD_ENTRY_TYPE = 'S'
then
	STK_MULTILOCATN
else
	0
end) AS SUBANALYSISITEM,
RPD_USRCHAR1,
RPD_USRCHAR2,
RPD_USRCHAR3,
RPD_USRCHAR4,
RPD_USRFLAG1,
RPD_USRFLAG2,
RPD_USRDATE1,
RPD_USRDATE2,
RPD_USRNUM1,
RPD_USRNUM2,

RPD_PRIMARY

FROM RTP_DETAIL
LEFT OUTER JOIN RTP_DETAIL2 ON RPD_PRIMARY = RPD_PRIMARY_2

LEFT OUTER JOIN PRC_PRICE_RECS ON COALESCE(RTP_DETAIL.RPD_PRICE_CODE,'') = PRC_PRICE_RECS.PRCODE
LEFT OUTER JOIN STK_STOCK ON COALESCE(RTP_DETAIL.RPD_STOCK_CODE,'') = STK_STOCK.STKCODE
LEFT OUTER JOIN STK_PICTURE ON COALESCE(STK_STOCK.STKCODE,'') = STK_PICTURE.PIC_STK_CODE