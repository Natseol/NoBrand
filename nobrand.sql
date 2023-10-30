  CREATE TABLE "NOBRAND"."USERS" 
   (	"ID" NUMBER generated as identity constraint pk_users_id primary key NOT NULL ENABLE, 
	"NAME" VARCHAR2(14 BYTE) NOT NULL ENABLE, 
	"USER_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"PW" VARCHAR2(64 BYTE) NOT NULL ENABLE, 
	"COLUMN4" VARCHAR2(12 BYTE) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(30 BYTE) NOT NULL ENABLE, 
	"ADDRESS" LONG NOT NULL ENABLE, 
	"CREATED_AT" DATE NOT NULL ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
    CREATE TABLE "NOBRAND"."BUYLIST" 
   (	"ID" NUMBER generated as identity NOT NULL ENABLE, 
	"NAME" VARCHAR2(70 BYTE) NOT NULL ENABLE, 
	"count" NUMBER NOT NULL ENABLE, 
	"price" NUMBER NOT NULL ENABLE, 
	"created_at" timestamp DEFAULT sysdate NOT NULL ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
  
  create table goods (
    "ID" number generated as identity constraint pk_goods_id primary key ,
    "NAME" VARCHAR2(70),
    "KIND_BOTTOM" VARCHAR2(20),
    "price" number,
    "SEARCH_COUNT" number,
    "SELL_COUNT" number,
    "INFO" varchar2(30),
    "IMAGE" varchar2(100),
    "OPTION" varchar2(100),
    "DELIVERY" varchar2(20),
    "CONTENT" long
);

create table review(
      id number generated as identity primary key,
        name varchar2(20) not null,
      score number not null,
      review_count number not null,
      create_at date default sysdate not NULL
      );

      
create table CATEGORY (
    kind_top varchar2(20),
    kind_middle varchar2(20),
    kind_bottom varchar2(20)
);