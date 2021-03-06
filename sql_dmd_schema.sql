CREATE DATABASE DMD;

USE DMD;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[AMP]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[AMP] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[AP_ING]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[AP_ING] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[LIC_ROUTE]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[LIC_ROUTE] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[AP_INFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[AP_INFO] END;

-- CREATE AMP TABLE
CREATE TABLE [DMD].[dbo].[AMP] (
    [APID] bit  NOT NULL,
    [INVALID] bit  NULL,
    [VPID] bit  NOT NULL,
    [NM] varchar (255) NOT NULL,
    [ABBREVNM] varchar (255) NULL,
    [DESC] varchar (255) NOT NULL,
    [NMDT] datetime  NULL,
    [NM_PREV] varchar (255) NULL,
    [SUPPCD] bit  NOT NULL,
    [LIC_AUTHCD] bit  NOT NULL,
    [LIC_AUTH_PREVCD] bit  NULL,
    [LIC_AUTHCHANGECD] bit  NULL,
    [LIC_AUTHCHANGEDT] datetime NULL,
    [COMBPRODCD] bit  NULL,
    [FLAVOURCD] bit  NULL,
    [EMA] bit  NULL,
    [PARALLEL_IMPORT] bit  NULL,
    [AVAIL_RESTRICTCD] bit  NOT NULL
);

-- CREATE AP_ING TABLE
CREATE TABLE [DMD].[dbo].[AP_ING] (
    [APID] bit  NOT NULL,
    [ISID] bit  NOT NULL,
    [STRNTH] real NULL,
    [UOMCD] bit  NULL
);

-- CREATE LIC_ROUTE TABLE
CREATE TABLE [DMD].[dbo].[LIC_ROUTE] (
    [APID] bit  NOT NULL,
    [ROUTECD] bit  NOT NULL
);

-- CREATE AP_INFO TABLE
CREATE TABLE [DMD].[dbo].[AP_INFO] (
    [APID] bit  NOT NULL,
    [SZ_WEIGHT] varchar (8000)  NULL,
    [COLOURCD] bit  NULL,
    [PROD_ORDER_NO] varchar (8000) NULL
);

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[AMPP]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[AMPP] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[PACK_INFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[PACK_INFO] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[PRESCRIB_INFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[PRESCRIB_INFO] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[PRICE_INFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[PRICE_INFO] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[CCONTENT]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[CCONTENT] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[REIMB_INFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[REIMB_INFO] END;

-- CREATE AMPP TABLE
CREATE TABLE [DMD].[dbo].[AMPP] (
    [APPID] bit  NOT NULL,
    [INVALID] bit  NULL,
    [NM] varchar (8000)  NOT NULL,
    [ABBREVNM] varchar (8000)  NULL,
    [VPPID] bit  NOT NULL,
    [APID] bit  NOT NULL,
    [COMBPACKCD] bit  NULL,
    [LEGAL_CATCD] bit  NOT NULL,
    [SUBP] varchar (8000)  NULL,
    [DISCCD] bit  NULL,
    [DISCDT] datetime  NULL
);

-- CREATE PACK_INFO TABLE
CREATE TABLE [DMD].[dbo].[PACK_INFO] (
    [APPID] bit  NOT NULL,
    [REIMB_STATCD] bit  NOT NULL,
    [REIMB_STATDT] datetime  NULL,
    [REIMB_STATPREVCD] bit  NULL,
    [PACK_ORDER_NO] varchar (8000) NULL
);

-- CREATE PRESCRIB_INFO TABLE
CREATE TABLE [DMD].[dbo].[PRESCRIB_INFO] (
    [APPID] bit  NOT NULL,
    [SCHED_2] bit  NULL,
    [ACBS] bit  NULL,
    [PADM] bit  NULL,
    [FP10_MDA] bit  NULL,
    [SCHED_1] bit  NULL,
    [HOSP] bit  NULL,
    [NURSE_F] bit  NULL,
    [ENURSE_F] bit  NULL,
    [DENT_F] bit  NULL
);

-- CREATE PRICE_INFO TABLE
CREATE TABLE [DMD].[dbo].[PRICE_INFO] (
    [APPID] bit  NOT NULL,
    [PRICE] bit  NULL,
    [PRICEDT] datetime  NULL,
    [PRICE_PREV] bit  NULL,
    [PRICE_BASISCD] bit  NOT NULL
);

-- CREATE CCONTENT TABLE
CREATE TABLE [DMD].[dbo].[CCONTENT] (
    [PRNTAPPID] bit  NOT NULL,
    [CHLDAPPID] bit  NOT NULL
);

-- CREATE REIMB_INFO TABLE
CREATE TABLE [DMD].[dbo].[REIMB_INFO] (
    [APPID] bit  NOT NULL,
    [PX_CHRGS] bit  NULL,
    [DISP_FEES] bit  NULL,
    [BB] bit  NULL,
    [LTD_STAB] bit  NULL,
    [CAL_PACK] bit  NULL,
    [SPEC_CONTCD] bit  NULL,
    [DND] bit  NULL,
    [FP34D] bit  NULL
);

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[ING]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[ING] END;

-- CREATE ING TABLE
CREATE TABLE [DMD].[dbo].[ING] (
    [ISID] bit  NOT NULL,
    [ISIDDT] datetime  NULL,
    [ISIDPREV] bit  NULL,
    [INVALID] bit  NULL,
    [NM] varchar (8000) NOT NULL
);

-- ===================================================================================
-- FOURTH SCHEMA
-- ===================================================================================

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[INFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[INFO] END;

-- CREATE INFO TABLE
CREATE TABLE [DMD].[dbo].[INFO] (
    [CD] bit  NOT NULL,
    [DESC] char (8000) NOT NULL
);

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[DFORM]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[DFORM] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[CONTROL_INFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[CONTROL_INFO] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[DROUTE]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[DROUTE] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[VPI]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[VPI] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[ONT]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[ONT] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[VMP]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[VMP] END;

-- CREATE VMP TABLE
CREATE TABLE [DMD].[dbo].[VMP] (
    [VPID] bit  NOT NULL ,
    [VPIDDT] datetime  NULL ,
    [VPIDPREV] bit  NULL ,
    [VTMID] bit  NULL ,
    [INVALID] bit  NULL ,
    [NM] varchar (8000)  NOT NULL ,
    [ABBREVNM] varchar (8000)  NULL ,
    [BASISCD] bit  NOT NULL ,
    [NMDT] datetime  NULL ,
    [NMPREV] varchar (8000)  NULL ,
    [BASIS_PREVCD] bit  NULL ,
    [NMCHANGECD] bit  NULL ,
    [COMBPRODCD] bit  NULL ,
    [PRES_STATCD] bit  NOT NULL ,
    [SUG_F] bit  NULL ,
    [GLU_F] bit  NULL ,
    [PRES_F] bit  NULL ,
    [CFC_F] bit  NULL ,
    [NON_AVAILCD] bit  NULL ,
    [NON_AVAILDT] datetime  NULL ,
    [DF_INDCD] bit  NULL ,
    [UDFS] real  NULL ,
    [UDFS_UOMCD] bit  NULL ,
    [UNIT_DOSE_UOMCD] bit  NULL
);

-- CREATE ONT TABLE
CREATE TABLE [DMD].[dbo].[ONT] (
    [VPID] bit  NOT NULL,
    [FORMCD] bit  NOT NULL
);

-- CREATE VPI TABLE
CREATE TABLE [DMD].[dbo].[VPI] (
    [VPID] bit  NOT NULL,
    [ISID] bit  NOT NULL,
    [BASIS_STRNTCD] bit  NULL,
    [BS_SUBID] bit  NULL,
    [STRNT_NMRTR_VAL] real  NULL,
    [STRNT_NMRTR_UOMCD] bit  NULL,
    [STRNT_DNMTR_VAL] real  NULL,
    [STRNT_DNMTR_UOMCD] bit  NULL
);

-- CREATE DFORM TABLE
CREATE TABLE [DMD].[dbo].[DFORM] (
    [VPID] bit  NOT NULL,
    [FORMCD] bit  NOT NULL
);

-- CREATE CONTROL_INFO TABLE
CREATE TABLE [DMD].[dbo].[CONTROL_INFO] (
    [VPID] bit  NOT NULL,
    [CATCD] bit  NOT NULL,
    [CATDT] datetime  NULL,
    [CAT_PREVCD] bit  NULL
);

-- CREATE DROUTE TABLE
CREATE TABLE [DMD].[dbo].[DROUTE] (
    [VPID] bit  NOT NULL,
    [ROUTECD] bit  NOT NULL
);

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[VMPP]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[VMPP] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[DTINFO]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[DTINFO] END;

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[CCONTENT]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[CCONTENT] END;

-- CREATE VMPP TABLE
CREATE TABLE [DMD].[dbo].[VMPP] (
    [VPPID] bit NOT NULL,
    [INVALID] bit NULL,
    [NM] varchar (8000) NOT NULL,
    [ABBREVNM] varchar (8000) NULL,
    [VPID] bit NOT NULL,
    [QTYVAL] real NOT NULL,
    [QTY_UOMCD] bit NOT NULL,
    [COMBPACKCD] bit NULL
);

-- CREATE DTINFO TABLE
CREATE TABLE [DMD].[dbo].[DTINFO] (
    [VPPID] bit NOT NULL,
    [PAY_CATCD] bit NOT NULL,
    [PRICE] bit NULL,
    [DT] datetime NULL,
    [PREVPRICE] bit NULL
);

-- CREATE CCONTENT TABLE
CREATE TABLE [DMD].[dbo].[CCONTENT] (
    [PRNTVPPID] bit NOT NULL,
    [CHLDVPPID] bit NOT NULL
);

IF EXISTS (
    SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DMD].[dbo].[VTM]'
) AND OBJECTPROPERTY(ID, N'ISUSERTABLE') = 1) BEGIN DROP TABLE [DMD].[dbo].[VTM] END;

-- CREATE CCONTENT TABLE
CREATE TABLE [DMD].[dbo].[VTM] (
    [VTMID] bit  NOT NULL,
    [INVALID] bit  NULL,
    [NM] varchar (8000) NOT NULL,
    [ABBREVNM] varchar (8000)  NULL,
    [VTMIDPREV] varchar (8000)  NULL,
    [VTMIDDT] datetime  NULL
);
