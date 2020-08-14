--------------------------------------------------------
--  파일이 생성됨 - 월요일-8월-10-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FREQUENTLYQA_TBL
--------------------------------------------------------

  CREATE TABLE  "FREQUENTLYQA_TBL" 
   (	"FRE_TITLE" VARCHAR2(30 BYTE), 
	"FRE_CONTENT" VARCHAR2(200 BYTE), 
	"FRE_CATEGORY" VARCHAR2(100 BYTE), 
	"FRE_ANSWER" VARCHAR2(200 BYTE), 
	"FRE_CATEGORYNUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into   FREQUENTLYQA_TBL
SET DEFINE OFF;
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('홈페이지 1번 제목','홈페이지 1번 내용','[홈페이지]','홈페이지 1번 답변',1);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('홈페이지 2번 제목','홈페이지 2번 내용','[홈페이지]','홈페이지 2번 답변',1);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('홈페이지 3번 제목','홈페이지 3번 내용','[홈페이지]','홈페이지 3번 답변',1);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('기능 1번 제목','기능 1번 내용','[기능]','기능 1번 답변',2);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('기능 2번 제목','기능 2번 내용','[기능]','기능 2번 답변',2);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('기능 3번 제목','기능 3번 내용','[기능]','기능 3번 답변',2);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('결제 1번 제목','결제 1번 내용','[결제]','결제 1번 답변',3);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('결제 2번 제목','결제 2번 내용','[결제]','결제 2번 답변',3);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('결제 3번 제목','결제 3번 내용','[결제]','결제 3번 답변',3);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('기타 1번 제목','기타 1번 내용','[기타]','기타 1번 답변',4);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('기타 2번 제목','기타 2번 내용','[기타]','기타 2번 답변',4);
Insert into   FREQUENTLYQA_TBL (FRE_TITLE,FRE_CONTENT,FRE_CATEGORY,FRE_ANSWER,FRE_CATEGORYNUM) values ('기타 3번 제목','기타 3번 내용','[기타]','기타 3번 답변',4);
--------------------------------------------------------
--  Constraints for Table FREQUENTLYQA_TBL
--------------------------------------------------------

  ALTER TABLE  "FREQUENTLYQA_TBL" MODIFY ("FRE_ANSWER" NOT NULL ENABLE);
  ALTER TABLE  "FREQUENTLYQA_TBL" MODIFY ("FRE_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE  "FREQUENTLYQA_TBL" MODIFY ("FRE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE  "FREQUENTLYQA_TBL" MODIFY ("FRE_TITLE" NOT NULL ENABLE);
