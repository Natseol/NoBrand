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

create table GOODS (
    "ID" number generated as identity constraint primary key ,
    "PRICE" number,
    "SEARCH_COUNT" number,
    "SELL_COUNT" number,
    "GOODS_COUNT" number,
    "NAME" VARCHAR2(70),
    "KIND_TOP" VARCHAR2(30),
    "KIND_BOTTOM" VARCHAR2(20),
    "INFO" varchar2(30),
    "IMAGE" varchar2(1000),
    "OPTION" varchar2(100),
    "DELIVERY" varchar2(20),
    "CONTENT" long
);

create table REVIEW(
   "GOODS_ID" number not null,
    "USER_ID" number not null,
    "SCORE" number not null,
    "CONTENT" long not null, 
    constraint "GOODS_ID" foreign key("GOODS_ID") REFERENCES GOODS("ID"),
    constraint "USER_ID" foreign key("USER_ID") REFERENCES USERS("ID")
    )
    
create table BUYLIST (
    "USER_ID" number NOT NULL,
    "GOODS_ID" number NOT NULL,
    "COUNT" number NOT NULL,
    "PRICE" number NOT NULL,
    "CREATEAT" DATE DEFAULT sysdate NOT NULL,
    constraint "FK_GOODS_ID" foreign key("GOODS_ID") REFERENCES GOODS("ID"),
    constraint "FK_USER_ID" foreign key("USER_ID") REFERENCES USERS("ID")
);  