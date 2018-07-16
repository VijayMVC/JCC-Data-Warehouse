﻿CREATE TABLE [dbo].[LANG_DOCUMENT] (
    [LANGCODE_DOC]                        VARCHAR (10) NOT NULL,
    [YOUR_REF_DOC]                        VARCHAR (10) NULL,
    [ACCOUNT_DOC]                         VARCHAR (10) NULL,
    [OUR_REF_DOC]                         VARCHAR (10) NULL,
    [DELIVERY_DOC]                        VARCHAR (10) NULL,
    [TYPE_DOC]                            VARCHAR (6)  NULL,
    [DATE_DOC]                            VARCHAR (5)  NULL,
    [YOUR_VATNO_DOC]                      VARCHAR (15) NULL,
    [DELIVERY_ADDRESS_DOC]                VARCHAR (18) NULL,
    [REGNO_DOC]                           VARCHAR (12) NULL,
    [DESCRIPTION_DOC]                     VARCHAR (15) NULL,
    [QUANTITY_DOC]                        VARCHAR (10) NULL,
    [PRICE_DOC]                           VARCHAR (6)  NULL,
    [DISCOUNT_DOC]                        VARCHAR (10) NULL,
    [VALUE_DOC]                           VARCHAR (10) NULL,
    [SURCHARGE_DOC]                       VARCHAR (10) NULL,
    [NET_DOC]                             VARCHAR (6)  NULL,
    [TAX_DOC]                             VARCHAR (5)  NULL,
    [TOTAL_DOC]                           VARCHAR (10) NULL,
    [DUE_BY_DOC]                          VARCHAR (10) NULL,
    [ANALYSIS_DOC]                        VARCHAR (10) NULL,
    [CODE_TAX_DOC]                        VARCHAR (8)  NULL,
    [RATE_TAX_DOC]                        VARCHAR (8)  NULL,
    [SETTLEMENT_DISC_DOC]                 VARCHAR (20) NULL,
    [SAVE_TEXT_DOC]                       VARCHAR (6)  NULL,
    [OR_SAVE_DOC]                         VARCHAR (10) NULL,
    [BY_TEXT_DOC]                         VARCHAR (5)  NULL,
    [NOT_TAX_INVOICE_DOC]                 VARCHAR (30) NULL,
    [ACKNOWLEDGE_DOC]                     VARCHAR (60) NULL,
    [SIGNED_DOC]                          VARCHAR (8)  NULL,
    [NAME_CAPITALS_DOC]                   VARCHAR (20) NULL,
    [COMMENTS_DOC]                        VARCHAR (10) NULL,
    [OUTSTANDING_DOC]                     VARCHAR (15) NULL,
    [CREDITNOTE_ADD_DOC]                  VARCHAR (22) NULL,
    [INVOICE_ADD_DOC]                     VARCHAR (22) NULL,
    [OUTSTND_DELIVER_DOC]                 VARCHAR (25) NULL,
    [OUTSTND_INVOICE_DOC]                 VARCHAR (25) NULL,
    [INVOICE_TITLE_DOC]                   VARCHAR (25) NULL,
    [DELNOTE_TITLE_DOC]                   VARCHAR (25) NULL,
    [CREDNOTE_TITLE_DOC]                  VARCHAR (25) NULL,
    [ORDCONFIRM_TITLE_DOC]                VARCHAR (25) NULL,
    [WORKS_ORD_TITLE_DOC]                 VARCHAR (25) NULL,
    [REF_DOC]                             VARCHAR (6)  NULL,
    [DEBIT_DOC]                           VARCHAR (10) NULL,
    [CREDIT_DOC]                          VARCHAR (10) NULL,
    [BALANCE_DOC]                         VARCHAR (10) NULL,
    [RUN_BALANCE_DOC]                     VARCHAR (18) NULL,
    [AGED_ANALYSIS_DOC]                   VARCHAR (15) NULL,
    [DISPUTED_DOC]                        VARCHAR (12) NULL,
    [CURRENT_DOC]                         VARCHAR (8)  NULL,
    [TOTAL_BAL_OS_DOC]                    VARCHAR (28) NULL,
    [UNALLOC_CREDIT_DOC]                  VARCHAR (25) NULL,
    [REQUIRED_DOC]                        VARCHAR (10) NULL,
    [TOT_VAL_REMIT_DOC]                   VARCHAR (30) NULL,
    [CHQ_ENCLOSED_DOC]                    VARCHAR (36) NULL,
    [ABOVE_VALUE_DOC]                     VARCHAR (25) NULL,
    [TELEPHONE_DOC]                       VARCHAR (10) NULL,
    [PURCHASE_ORDER_DOC]                  VARCHAR (35) NULL,
    [GOODS_RETURNED_DOC]                  VARCHAR (35) NULL,
    [SELF_BILL_INVOICE_DOC]               VARCHAR (35) NULL,
    [SELF_BILL_CREDIT_DOC]                VARCHAR (35) NULL,
    [PLEASE_DELIVER_TO_DOC]               VARCHAR (20) NULL,
    [PAGE_DOC]                            VARCHAR (6)  NULL,
    [STOCK_ORDER_LINE_DOC]                VARCHAR (20) NULL,
    [THE_TAX_SHOWN_POP_DOC]               VARCHAR (60) NULL,
    [SERIAL_NO_DOC]                       VARCHAR (12) NULL,
    [GRN_NO_DOC]                          VARCHAR (12) NULL,
    [ORDERNO_DOC]                         VARCHAR (12) NULL,
    [PURCHASE_UNIT_DOC]                   VARCHAR (15) NULL,
    [TO_DOC]                              VARCHAR (5)  NULL,
    [SALES_UNIT_DOC]                      VARCHAR (12) NULL,
    [NUMBER_DOC]                          VARCHAR (10) NULL,
    [POSITION_DOC]                        VARCHAR (10) NULL,
    [TOTALFOR_DOC]                        VARCHAR (12) NULL,
    [VAT_ANALYSIS_DOC]                    VARCHAR (15) NULL,
    [CUSTOMER_REF_DOC]                    VARCHAR (15) NULL,
    [GOODS_RECEIVED_DOC]                  VARCHAR (25) NULL,
    [TRANSACTIONS_DOC]                    VARCHAR (16) NULL,
    [ADDRESS_DOC]                         VARCHAR (10) NULL,
    [TERMS_DOC]                           VARCHAR (10) NULL,
    [YOU_WILL_SAVE_DOC]                   VARCHAR (15) NULL,
    [WE_CAN_OFFER_DOC]                    VARCHAR (15) NULL,
    [RECEIPT_DOC]                         VARCHAR (10) NULL,
    [RECEIVED_DOC]                        VARCHAR (10) NULL,
    [TOT_VAL_ALOCTRN_DOC]                 VARCHAR (40) NULL,
    [TOT_VAL_DISCT_DOC]                   VARCHAR (30) NULL,
    [TOT_VAL_RCPT_DOC]                    VARCHAR (25) NULL,
    [SL_INVOICE_DOC]                      VARCHAR (12) NULL,
    [SL_CREDIT_NOTE_DOC]                  VARCHAR (12) NULL,
    [DR_ABBREV_DOC]                       VARCHAR (2)  NULL,
    [CR_ABBREV_DOC]                       VARCHAR (2)  NULL,
    [ADJUST_ABBREV_DOC]                   VARCHAR (10) NULL,
    [SL_RECEIPT_DOC]                      VARCHAR (12) NULL,
    [SUPPLIER_STATEMENT_DOC]              VARCHAR (25) NULL,
    [SALES_STATEMENT_DOC]                 VARCHAR (25) NULL,
    [REMITTANCE_ADVICE_DOC]               VARCHAR (25) NULL,
    [UP_TO_DOC]                           VARCHAR (8)  NULL,
    [DAYS_DOC]                            VARCHAR (8)  NULL,
    [OVER_DOC]                            VARCHAR (6)  NULL,
    [BEFORE_DOC]                          VARCHAR (8)  NULL,
    [UNALLOC_DEBITS_DOC]                  VARCHAR (25) NULL,
    [YOURSFAITHFLY_DOC_1]                 VARCHAR (18) NULL,
    [DEAR_DOC]                            VARCHAR (6)  NULL,
    [DEAR_SIR_MADM_DOC]                   VARCHAR (20) NULL,
    [GROSS_DOC]                           VARCHAR (6)  NULL,
    [DUE_DATE_DOC]                        VARCHAR (10) NULL,
    [REFERENCE_DOC]                       VARCHAR (15) NULL,
    [PL_INVOICE_DOC]                      VARCHAR (12) NULL,
    [PL_CREDIT_NOTE_DOC]                  VARCHAR (12) NULL,
    [PL_PAYMENT_DOC]                      VARCHAR (12) NULL,
    [REMITTED_DOC]                        VARCHAR (10) NULL,
    [CONTINUED_DOC]                       VARCHAR (5)  NULL,
    [DAYS_OVERDUE_DOC]                    VARCHAR (15) NULL,
    [VOID_CHEQUE_DOC]                     VARCHAR (10) NULL,
    [COPY_DOC]                            VARCHAR (12) NULL,
    [CIS_EMP_REF_NO_DOC]                  VARCHAR (50) NULL,
    [SUBCONTRACTOR_DOC]                   VARCHAR (15) NULL,
    [UNIQUE_TAX_REF_DOC]                  VARCHAR (30) NULL,
    [VERIFICATION_NO_DOC]                 VARCHAR (25) NULL,
    [GROSS_PAID_EXCL_VAT_DOC]             VARCHAR (35) NULL,
    [CITB_LEVY_DOC]                       VARCHAR (15) NULL,
    [LESS_COST_MATERIALS_DOC]             VARCHAR (25) NULL,
    [AMOUNT_LIABLE_DEDUCT_DOC]            VARCHAR (30) NULL,
    [AMOUNT_DEDUCTED_DOC]                 VARCHAR (20) NULL,
    [AMOUNT_PAYABLE_DOC]                  VARCHAR (20) NULL,
    [CIS_STATEMENT_DOC]                   VARCHAR (70) NULL,
    [TOT_VAL_DEDUCTIONS]                  VARCHAR (30) NULL,
    [CREDITNOTECONFIRM_TITLE_DOC]         VARCHAR (25) NULL,
    [INCL_CITB_LEVY_DEDUCTION_DOC]        VARCHAR (40) NULL,
    [GROSS_PAID_EXCL_VAT_AND_DEDUCTIONS]  VARCHAR (50) NULL,
    [AFTER_PAYMENT_ONLY_RECOVER_PAID_VAT] VARCHAR (70) NULL,
    [NO_CREDIT_NOTE_ISSUED]               VARCHAR (50) NULL,
    CONSTRAINT [LANGCODE_DOC_PK] PRIMARY KEY CLUSTERED ([LANGCODE_DOC] ASC)
);

