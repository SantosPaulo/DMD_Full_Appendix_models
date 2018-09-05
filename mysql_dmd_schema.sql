CREATE DATABASE DMD;

USE DMD;

-- CREATE AMP TABLE
CREATE TABLE AMP (
    `APID` BIT  NOT NULL,
    `INVALID` BIT  NULL,
    `VPID` BIT  NOT NULL,
    `NM` VARCHAR (255) NOT NULL,
    `ABBREVNM` VARCHAR (255) NULL,
    `DESC` VARCHAR (255) NOT NULL,
    `NMDT` DATETIME  NULL,
    `NM_PREV` VARCHAR (255) NULL,
    `SUPPCD` BIT  NOT NULL,
    `LIC_AUTHCD` BIT  NOT NULL,
    `LIC_AUTH_PREVCD` BIT  NULL,
    `LIC_AUTHCHANGECD` BIT  NULL,
    `LIC_AUTHCHANGEDT` DATETIME NULL,
    `COMBPRODCD` BIT  NULL,
    `FLAVOURCD` BIT  NULL,
    `EMA` BIT  NULL,
    `PARALLEL_IMPORT` BIT  NULL,
    `AVAIL_RESTRICTCD` BIT  NOT NULL
);

-- CREATE AP_ING TABLE
CREATE TABLE AP_ING (
    `APID` VARCHAR(8000)  NOT NULL,
    `ISID` VARCHAR(8000)  NOT NULL,
    `STRNTH` real NULL,
    `UOMCD` VARCHAR(8000)  NULL
);

-- CREATE LIC_ROUTE TABLE
CREATE TABLE LIC_ROUTE (
    `APID` BIT  NOT NULL,
    `ROUTECD` BIT  NOT NULL
);

-- CREATE AP_INFO TABLE
CREATE TABLE AP_INFO (
    `APID` VARCHAR (8000)  NOT NULL,
    `SZ_WEIGHT` VARCHAR (8000)  NULL,
    `COLOURCD` VARCHAR (8000)  NULL,
    `PROD_ORDER_NO` VARCHAR (8000) NULL
);

-- CREATE AMPP TABLE
CREATE TABLE AMPP (
    `APPID` BIT  NOT NULL,
    `INVALID` BIT  NULL,
    `NM` VARCHAR (8000)  NOT NULL,
    `ABBREVNM` VARCHAR (8000)  NULL,
    `VPPID` BIT  NOT NULL,
    `APID` BIT  NOT NULL,
    `COMBPACKCD` BIT  NULL,
    `LEGAL_CATCD` BIT  NOT NULL,
    `SUBP` VARCHAR (8000)  NULL,
    `DISCCD` BIT  NULL,
    `DISCDT` DATETIME  NULL
);

-- CREATE PACK_INFO TABLE
CREATE TABLE PACK_INFO (
    `APPID` BIT  NOT NULL,
    `REIMB_STATCD` BIT  NOT NULL,
    `REIMB_STATDT` DATETIME  NULL,
    `REIMB_STATPREVCD` BIT  NULL,
    `PACK_ORDER_NO` VARCHAR (8000) NULL
);

-- CREATE PRESCRIB_INFO TABLE
CREATE TABLE PRESCRIB_INFO (
    `APPID` BIT  NOT NULL,
    `SCHED_2` BIT  NULL,
    `ACBS` BIT  NULL,
    `PADM` BIT  NULL,
    `FP10_MDA` BIT  NULL,
    `SCHED_1` BIT  NULL,
    `HOSP` BIT  NULL,
    `NURSE_F` BIT  NULL,
    `ENURSE_F` BIT  NULL,
    `DENT_F` BIT  NULL
);

-- CREATE PRICE_INFO TABLE
CREATE TABLE PRICE_INFO (
    `APPID` BIT  NOT NULL,
    `PRICE` BIT  NULL,
    `PRICEDT` DATETIME  NULL,
    `PRICE_PREV` BIT  NULL,
    `PRICE_BASISCD` BIT  NOT NULL
);

-- CREATE REIMB_INFO TABLE
CREATE TABLE REIMB_INFO (
    `APPID` BIT  NOT NULL,
    `PX_CHRGS` BIT  NULL,
    `DISP_FEES` BIT  NULL,
    `BB` BIT  NULL,
    `LTD_STAB` BIT  NULL,
    `CAL_PACK` BIT  NULL,
    `SPEC_CONTCD` BIT  NULL,
    `DND` BIT  NULL,
    `FP34D` BIT  NULL
);

-- CREATE ING TABLE
CREATE TABLE ING (
    `ISID` BIT  NOT NULL,
    `ISIDDT` DATETIME  NULL,
    `ISIDPREV` BIT  NULL,
    `INVALID` BIT  NULL,
    `NM` VARCHAR (8000) NOT NULL
);

-- CREATE INFO TABLE
CREATE TABLE INFO (
    `CD` BIT  NOT NULL,
    `DESC` VARCHAR (8000) NOT NULL
);

CREATE TABLE VMP (
    `VPID` VARCHAR(255)  NOT NULL ,
    `VPIDDT` DATETIME  NULL ,
    `VPIDPREV` VARCHAR(255)  NULL ,
    `VTMID` VARCHAR(255)  NULL ,
    `INVALID` VARCHAR(255)  NULL ,
    `NM` VARCHAR (255)  NOT NULL ,
    `ABBREVNM` VARCHAR (255)  NULL ,
    `BASISCD` VARCHAR(255)  NOT NULL ,
    `NMDT` DATETIME  NULL ,
    `NMPREV` VARCHAR (255)  NULL ,
    `BASIS_PREVCD` VARCHAR(255)  NULL ,
    `NMCHANGECD` VARCHAR(255)  NULL ,
    `COMBPRODCD` VARCHAR(255)  NULL ,
    `PRES_STATCD` VARCHAR(255)  NOT NULL ,
    `SUG_F` VARCHAR(255)  NULL ,
    `GLU_F` VARCHAR(255)  NULL ,
    `PRES_F` VARCHAR(255)  NULL ,
    `CFC_F` VARCHAR(255)  NULL ,
    `NON_AVAILCD` VARCHAR(255)  NULL ,
    `NON_AVAILDT` DATETIME  NULL ,
    `DF_INDCD` VARCHAR(255)  NULL ,
    `UDFS` real  NULL ,
    `UDFS_UOMCD` VARCHAR(255)  NULL ,
    `UNIT_DOSE_UOMCD` VARCHAR(255)  NULL
);

-- CREATE ONT TABLE
CREATE TABLE ONT (
    `VPID` VARCHAR(9000)  NOT NULL,
    `FORMCD` VARCHAR(9000)  NOT NULL
);

-- CREATE VPI TABLE
CREATE TABLE VPI (
    `VPID` VARCHAR(9000)  NOT NULL,
    `ISID` VARCHAR(9000)  NOT NULL,
    `BASIS_STRNTCD` VARCHAR(9000)  NULL,
    `BS_SUBID` VARCHAR(9000)  NULL,
    `STRNT_NMRTR_VAL` real  NULL,
    `STRNT_NMRTR_UOMCD` VARCHAR(9000)  NULL,
    `STRNT_DNMTR_VAL` real  NULL,
    `STRNT_DNMTR_UOMCD` VARCHAR(9000)  NULL
);

-- CREATE DFORM TABLE
CREATE TABLE DFORM (
    `VPID` VARCHAR(9000)  NOT NULL,
    `FORMCD` VARCHAR(9000)  NOT NULL
);

-- CREATE CONTROL_INFO TABLE
CREATE TABLE CONTROL_INFO (
    `VPID` VARCHAR(9000)  NOT NULL,
    `CATCD` VARCHAR(9000)  NOT NULL,
    `CATDT` DATETIME  NULL,
    `CAT_PREVCD` VARCHAR(9000)  NULL
);

-- CREATE DROUTE TABLE
CREATE TABLE DROUTE (
    `VPID` VARCHAR(9000)  NOT NULL,
    `ROUTECD` VARCHAR(9000)  NOT NULL
);

-- CREATE VMPP TABLE
CREATE TABLE VMPP (
    `VPPID` VARCHAR(9000) NOT NULL,
    `INVALID` VARCHAR(9000) NULL,
    `NM` VARCHAR (9000) NOT NULL,
    `ABBREVNM` VARCHAR (9000) NULL,
    `VPID` VARCHAR(9000) NOT NULL,
    `QTYVAL` real NOT NULL,
    `QTY_UOMCD` VARCHAR(9000) NOT NULL,
    `COMBPACKCD` VARCHAR(9000) NULL
);

-- CREATE DTINFO TABLE
CREATE TABLE DTINFO (
    `VPPID` VARCHAR(32) NOT NULL,
    `PAY_CATCD` VARCHAR(32) NOT NULL,
    `PRICE` VARCHAR(32) NULL,
    `DT` DATETIME NULL,
    `PREVPRICE` VARCHAR(32) NULL
);

-- CREATE CCONTENT TABLE
CREATE TABLE CCONTENT (
    `PRNTVPPID` VARCHAR(32) NOT NULL,
    `CHLDVPPID` VARCHAR(32) NOT NULL
);

-- CREATE VTM TABLE
CREATE TABLE VTM (
    `VTMID` VARCHAR(16)  NOT NULL,
    `INVALID` BIT  NULL,
    `NM` VARCHAR (8000) NOT NULL,
    `ABBREVNM` VARCHAR (8000)  NULL,
    `VTMIDPREV` VARCHAR (8000)  NULL,
    `VTMIDDT` DATETIME  NULL
);
