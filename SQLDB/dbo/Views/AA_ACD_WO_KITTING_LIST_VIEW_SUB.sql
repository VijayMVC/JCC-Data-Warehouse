﻿Create view AA_ACD_WO_KITTING_LIST_VIEW_SUB
as

-- Get latest Stage details for Parent Works Order

SELECT
    DOC_WO_HEADER.DWH_WO_ORDER_NUMBER,
    DOC_WO_HEADER.DWH_USER_ID, 
    DOC_WO_HEADER.DWH_TOP_LEVEL_WO_NO,
    WO_STAGES.WS_TEXT                  STAGE_TEXT,
    WO_STAGE_QUANTITIES.WQ_QUANTITY    STAGE_QUANTITY,
    WO_STAGE_QUANTITIES.WQ_PRIMARY, 
    WO_STAGE_QUANTITIES.WQ_ORDER_NUMBER

FROM
   DOC_WO_HEADER DOC_WO_HEADER 
    LEFT OUTER JOIN WO_STAGE_QUANTITIES WO_STAGE_QUANTITIES ON DOC_WO_HEADER.DWH_WO_ORDER_NUMBER = WO_STAGE_QUANTITIES.WQ_ORDER_NUMBER 
    LEFT OUTER JOIN WO_STAGES WO_STAGES ON WS_PRIMARY = WQ_STAGE_LINK    


