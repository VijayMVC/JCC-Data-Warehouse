﻿CREATE PROCEDURE [dbo].[AA_SOP_BELG_NOMINAL_DETAIL_S]
@PS_Origin VARCHAR (3) NULL, @PS_Trn_Type VARCHAR (3) NULL, @PS_Trn_Curr_Code VARCHAR (4) NULL, @PS_Trn_Nom_Period TINYINT NULL, @PS_Trn_Nom_Year CHAR (1) NULL, @PS_Trn_VatCode VARCHAR (4) NULL, @PS_Trn_Origin VARCHAR (2) NULL, @PS_Trn_Ledger VARCHAR (2) NULL, @PS_Trn_Header_Ref VARCHAR (11) NULL, @PS_Trn_Date DATETIME NULL, @PS_Trn_ImpExp_Code CHAR (1) NULL, @PS_Trn_Period_Number TINYINT NULL, @PS_Trn_Year CHAR (1) NULL, @PS_Trn_Period_Sort SMALLINT NULL, @PS_Trn_Nom_PerSort SMALLINT NULL, @PS_Trn_Header_Key VARCHAR (20) NULL, @PS_Trn_Account VARCHAR (25) NULL, @PS_Trn_Anal_Type CHAR (1) NULL, @PS_Trn_User_Putin VARCHAR (5) NULL, @PS_Trn_Date_Putin DATETIME NULL, @PS_Trn_Sub_Ledger VARCHAR (10) NULL, @PS_Trn_Vat_Base2 DECIMAL (24, 8) NULL, @PS_Trn_CostHeader VARCHAR (10) NULL, @PS_Trn_CostCentre VARCHAR (10) NULL, @PS_Trn_Archive_Flg TINYINT NULL, @PS_Trn_Description VARCHAR (240) NULL, @PS_Trn_VatRules TINYINT NULL, @PS_Order_Primary INT NULL, @PS_TaxRule_Vat DECIMAL (24, 8) NULL, @PS_TaxRule_Curr_Vat DECIMAL (24, 8) NULL, @PS_TaxRule_Base2_Vat DECIMAL (24, 8) NULL, @PS_TaxRule_Nominal VARCHAR (25) NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


