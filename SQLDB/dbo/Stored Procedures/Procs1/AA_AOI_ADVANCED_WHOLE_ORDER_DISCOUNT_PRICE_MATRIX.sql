﻿CREATE PROCEDURE [dbo].[AA_AOI_ADVANCED_WHOLE_ORDER_DISCOUNT_PRICE_MATRIX]
@P_PRICELISTTYPE VARCHAR (3) NULL, @P_PRICELISTNAME VARCHAR (40) NULL, @P_EFFECTIVEFROM DATETIME NULL, @P_EFFECTIVETO DATETIME NULL, @P_CRYSTALREPORTNAME VARCHAR (200) NULL, @P_CURRENCY VARCHAR (5) NULL, @P_ACTIVE TINYINT NULL, @P_PRIORTITY INT NULL, @P_SORTKEY VARCHAR (20) NULL, @P_NOTES VARCHAR (MAX) NULL, @P_SUBANALYSISFILTER TINYINT NULL, @P_SUBANALYSISSTRING VARCHAR (MAX) NULL, @P_CUSTOMERLIST VARCHAR (MAX) NULL, @P_PRODUCTCATEGORYTYPE VARCHAR (1) NULL, @P_PRODUCTCATEGORY VARCHAR (25) NULL, @P_EXCLUDEPRODUCT TINYINT NULL, @P_SINGLEORQUANTITY TINYINT NULL, @P_QUANTITYFROM FLOAT (53) NULL, @P_QUANTITYTO FLOAT (53) NULL, @P_METHOD VARCHAR (1) NULL, @P_VALUE FLOAT (53) NULL, @P_DISCOUNTPERCENTAGE FLOAT (53) NULL, @P_CASHDISCOUNT FLOAT (53) NULL, @P_CHAINEDDISCOUNT FLOAT (53) NULL, @P_QUALIFICATIONTYPE TINYINT NULL, @P_QUALIFICATIONVALUE FLOAT (53) NULL, @P_QUALIFICATIONQUANTITY FLOAT (53) NULL, @P_FIXEDDISCOUNT FLOAT (53) NULL, @P_WHOLEORDERDISCOUNTPERCENTAGE FLOAT (53) NULL, @P_PRICECODE VARCHAR (16) NULL, @P_SINGLEMULTIPLETYPES VARCHAR (3) NULL, @P_QUANTITYVALUEFROM FLOAT (53) NULL, @P_QUANTITYVALUETO FLOAT (53) NULL, @P_APPLYTOSALESORDERS VARCHAR (3) NULL, @P_APPLYTOCREDITNOTES VARCHAR (3) NULL, @P_MATCHALLCUSTOMERCRITERIA VARCHAR (3) NULL, @P_MATCHALLPRODUCTCRITERIA VARCHAR (3) NULL, @P_APPLYTOALLCUSTOMERS VARCHAR (3) NULL, @P_APPLYTOALLPRODUCTS VARCHAR (3) NULL, @P_GROSSPRICES VARCHAR (3) NULL, @P_DISCOUNTTYPE TINYINT NULL, @P_OFFERTYPE TINYINT NULL, @P_OFFERPRODUCTTYPE VARCHAR (1) NULL, @P_OFFERPRODUCTVALUE VARCHAR (25) NULL, @P_OFFERPRODUCTQUANTITY FLOAT (53) NULL, @P_DISPLAYPROMPTSOPUSERS VARCHAR (3) NULL, @P_OVERRIDESTANDARDPRICING VARCHAR (3) NULL, @P_USESUBANALYSISASSIGNPRICEMETHODS VARCHAR (3) NULL, @PS_TRAN_ID INT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

