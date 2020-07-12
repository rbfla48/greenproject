--------------------------------------------------------
--  파일이 생성됨 - 일요일-7월-12-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SALES_DATA
--------------------------------------------------------

  CREATE TABLE "GREEN_ADMIN"."SALES_DATA" 
   (	"COLUMN1" DATE, 
	"SALES_COST" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "GREEN_ADMIN"."SALES_DATA"."COLUMN1" IS '판매월';
   COMMENT ON COLUMN "GREEN_ADMIN"."SALES_DATA"."SALES_COST" IS '매출액';
REM INSERTING into GREEN_ADMIN.SALES_DATA
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table SALES_DATA
--------------------------------------------------------

  ALTER TABLE "GREEN_ADMIN"."SALES_DATA" MODIFY ("SALES_COST" NOT NULL ENABLE);
  ALTER TABLE "GREEN_ADMIN"."SALES_DATA" MODIFY ("COLUMN1" NOT NULL ENABLE);
