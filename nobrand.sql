create table USERS (
    "ID" number generated as identity primary key,
    "NAME" varchar2(14) NOT NULL,
    "USERID" varchar2(20) NOT NULL UNIQUE,
    "PASSWORD" varchar2(64) NOT NULL,
    "PHONENUMBER" varchar2(30) NOT NULL,
    "EMAILADDRESS" varchar2(50) NOT NULL,
    "ADDRESS" varchar2(100) NOT NULL,
    "CREATEAT" DATE DEFAULT sysdate NOT NULL
);
create table BUYLIST (
    "ID" number generated as identity primary key,
    "NAME" varchar2(40) NOT NULL,
    "COUNT" number NOT NULL,
    "PRICE" number NOT NULL UNIQUE,
    "CREATEAT" DATE DEFAULT sysdate NOT NULL
);
create table CATEGORIES (
   "ID" number generated as identity primary key,
    "TOPKIND" varchar2(20),
    "BOTTOMKIND" varchar2(20)
);
  
  create table goods (
    "ID" number generated as identity constraint pk_goods_id primary key ,
    "NAME" VARCHAR2(70),
    "KIND_BOTTOM" VARCHAR2(20),
    "PRICE" number,
    "SEARCH_COUNT" number,
    "SELL_COUNT" number,
    "GOODS_COUNT" number,
    "INFO" varchar2(30),
    "IMAGE" varchar2(1000),
    "OPTION" varchar2(100),
    "DELIVERY" varchar2(20),
    "CONTENT" long
);
create table REVIEW(
   "GOODS_ID" NUMBER not null,
    "USER_ID" number not null,
    "TOPKIND" varchar2(20),
    "BOTTOMKIND" varchar2(20), 
    constraint "GOODS_ID" foreign key("GOODS_ID") REFERENCES GOODS("ID"),
    constraint "USER_ID" foreign key("USER_ID") REFERENCES USERS("ID")
);