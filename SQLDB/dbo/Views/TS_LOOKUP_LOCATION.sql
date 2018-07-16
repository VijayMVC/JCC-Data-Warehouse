﻿CREATE VIEW TS_LOOKUP_LOCATION AS

SELECT 

LOC_CODE 'Code',

LOC_NAME 'Description',

LOC_PHYSICAL 'Quantity',

LOC_ORDER_IN 'Order In',

LOC_RESERVE_OUT 'Allocated',

LOC_MIN_QTY 'Min Qty',

LOC_MAX_QTY 'Max Qty',

LOC_PHYSICAL - LOC_RESERVE_OUT 'Free',

LOC_STOCK_CODE '__STOCKCODE',

LOC_CODE '__CODE'

FROM STK_LOCATION