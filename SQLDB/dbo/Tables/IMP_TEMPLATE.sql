﻿CREATE TABLE [dbo].[IMP_TEMPLATE] (
    [IMP_BATCH_REF]             VARCHAR (10) NULL,
    [IMP_ERR_OUTPUT]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_NO_MESSAGES]           TINYINT      DEFAULT ((0)) NULL,
    [IMP_DUPLIC_REF]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_FILE_TYPE]             VARCHAR (40) NULL,
    [IMP_CLEAR_FILE]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_VALIDTE_FILE]          TINYINT      DEFAULT ((0)) NULL,
    [IMP_IGN_1ST_LINE]          TINYINT      DEFAULT ((0)) NULL,
    [IMP_PROMPT_OPT]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_NUMBER]          TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_ORDER]           VARCHAR (5)  NULL,
    [IMP_MACRO_NAME]            VARCHAR (22) NULL,
    [IMP_MACRO_AUTORUN]         TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_LEDGER]          TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_TYPE]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_OPT1]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_OPT2]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_OPT3]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_OPT4]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_MACRO_MENU]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_CONCAT_COST]           TINYINT      DEFAULT ((0)) NULL,
    [IMP_CST_SEPRATE]           VARCHAR (1)  NULL,
    [IMP_MULTI_CURR]            TINYINT      DEFAULT ((0)) NULL,
    [IMP_US_MARKET]             TINYINT      DEFAULT ((0)) NULL,
    [IMP_FUTURE_POST]           TINYINT      DEFAULT ((0)) NULL,
    [IMP_REMOVE_L_AND_T_SPACES] TINYINT      DEFAULT ((0)) NULL,
    [IMP_CUST_FILE]             TEXT         NULL,
    [IMP_CUSTADDR_FILE]         TEXT         NULL,
    [IMP_SLANLYS_FILE]          TEXT         NULL,
    [IMP_SLTRNA_FILE]           TEXT         NULL,
    [IMP_SLTRNS_FILE]           TEXT         NULL,
    [IMP_PROSPECT_FILE]         TEXT         NULL,
    [IMP_CONTACT_FILE]          TEXT         NULL,
    [IMP_SUPP_FILE]             TEXT         NULL,
    [IMP_SUPPADDR_FILE]         TEXT         NULL,
    [IMP_PLANLYS_FILE]          TEXT         NULL,
    [IMP_PLTRNA_FILE]           TEXT         NULL,
    [IMP_PLTRNS_FILE]           TEXT         NULL,
    [IMP_NOMACT_FILE]           TEXT         NULL,
    [IMP_NOMCAT_FILE]           TEXT         NULL,
    [IMP_NOMBUDG_FILE]          TEXT         NULL,
    [IMP_JORNLA_FILE]           TEXT         NULL,
    [IMP_JORNLS_FILE]           TEXT         NULL,
    [IMP_RECJNL_FILE]           TEXT         NULL,
    [IMP_VATJNL_FILE]           TEXT         NULL,
    [IMP_AUDJNL_FILE]           TEXT         NULL,
    [IMP_STKREC_FILE]           TEXT         NULL,
    [IMP_BUYPRC_FILE]           TEXT         NULL,
    [IMP_SELPRC_FILE]           TEXT         NULL,
    [IMP_LOCATN_FILE]           TEXT         NULL,
    [IMP_MOVEA_FILE]            TEXT         NULL,
    [IMP_MOVES_FILE]            TEXT         NULL,
    [IMP_ASSMBL_FILE]           TEXT         NULL,
    [IMP_MATRIX_FILE]           TEXT         NULL,
    [IMP_PRICEREC_FILE]         TEXT         NULL,
    [IMP_SOPORD_FILE]           TEXT         NULL,
    [IMP_SOPCRN_FILE]           TEXT         NULL,
    [IMP_SOPNYP_FILE]           TEXT         NULL,
    [IMP_POPORD_FILE]           TEXT         NULL,
    [IMP_POPCRN_FILE]           TEXT         NULL,
    [IMP_POPNYP_FILE]           TEXT         NULL,
    [IMP_POPRTP_FILE]           TEXT         NULL,
    [IMP_PROJECT_FILE]          TEXT         NULL,
    [IMP_COSTCNT_FILE]          TEXT         NULL,
    [IMP_REVBUDG_FILE]          TEXT         NULL,
    [IMP_RESRCE_FILE]           TEXT         NULL,
    [IMP_RESPRC_FILE]           TEXT         NULL,
    [IMP_TIMSHT_FILE]           TEXT         NULL,
    [IMP_MISC_FILE]             TEXT         NULL,
    [IMP_SALES_FILE]            TEXT         NULL,
    [IMP_PLCOST_FILE]           TEXT         NULL,
    [IMP_GROUP_FILE]            TEXT         NULL,
    [IMP_INVRINV_FILE]          TEXT         NULL,
    [IMP_INVRCRN_FILE]          TEXT         NULL,
    [IMP_CSTPROD_FILE]          TEXT         NULL,
    [IMP_CNTRY_FILE]            TEXT         NULL,
    [IMP_CRATES_FILE]           TEXT         NULL,
    [IMP_IR_APPR_FILE]          TEXT         NULL,
    [IMP_IR_REJD_FILE]          TEXT         NULL,
    [IMP_IR_TRAN_FILE]          TEXT         NULL,
    [IMP_SYSTEM_COMP_FILE]      TEXT         NULL,
    [IMP_PRIMARY]               FLOAT (53)   NOT NULL,
    CONSTRAINT [IMP_PRIMARY_PK] PRIMARY KEY CLUSTERED ([IMP_PRIMARY] ASC)
);

