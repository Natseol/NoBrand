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
    "KIND_TOP" VARCHAR2(50),
    "KIND_BOTTOM" VARCHAR2(50),
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

Insert into NOBRAND.GOODS (NAME,KIND_BOTTOM,PRICE,SEARCH_COUNT,SELL_COUNT,GOODS_COUNT,INFO,IMAGE,"OPTION",DELIVERY,CONTENT) values ('고구마','과일채소양곡',23000,0,0,231,'강원','<figure class="image"><img style="aspect-ratio:400/293;" src="http://localhost/nobrand/upload/315c104e-5235-4a6c-a663-c7367da9f079.jpg" width="400" height="293"></figure>','고구마 100g','들고가세요','<figure class="image"><img style="aspect-ratio:400/293;" src="http://localhost/nobrand/upload/a950be10-ee17-4528-a1d0-9bf5df84efa4.jpg" width="400" height="293"></figure>');
Insert into NOBRAND.GOODS (NAME,KIND_BOTTOM,PRICE,SEARCH_COUNT,SELL_COUNT,GOODS_COUNT,INFO,IMAGE,"OPTION",DELIVERY,CONTENT) values ('안성탕면','라면통조림',4500,0,0,100,'서울','<figure class="image"><img src="http://localhost/nobrand/resources/goods/487021a8-1a99-4790-bc62-e00de172d150.jpg"></figure>','안성탕면 5개입','롯데택배','<figure class="image"><img src="http://localhost/nobrand/resources/goods/2dba5aee-3684-4281-8aaf-98e94b985a37.jpg"></figure>');
Insert into NOBRAND.GOODS (NAME,KIND_BOTTOM,PRICE,SEARCH_COUNT,SELL_COUNT,GOODS_COUNT,INFO,IMAGE,"OPTION",DELIVERY,CONTENT) values ('귤','과일채소양곡',12300,0,0,1000,'제주','<figure class="image"><img src="http://localhost/nobrand/resources/goods/048699c7-233f-4f30-9873-268a6e42002b.jpg"></figure>','귤 1박스','직접배송','<figure class="image"><img src="http://localhost/nobrand/resources/goods/bd67ddb1-b2f5-405d-a854-353bca427589.jpg"></figure>');
Insert into NOBRAND.GOODS (NAME,KIND_BOTTOM,PRICE,SEARCH_COUNT,SELL_COUNT,GOODS_COUNT,INFO,IMAGE,"OPTION",DELIVERY,CONTENT) values ('너구리','라면통조림',5000,0,0,234,'농심','<figure class="image"><img style="aspect-ratio:290/290;" src="http://localhost/nobrand/upload/d16bf13d-9699-4c5c-8269-09c0f18b6da5.jpg" width="290" height="290"></figure>','너구리 5개입','없음','<p>너구리</p><figure class="image"><img style="aspect-ratio:290/290;" src="http://localhost/nobrand/upload/61d232b2-8208-473c-b360-36779c13e3d0.jpg" width="290" height="290"></figure>');
Insert into NOBRAND.GOODS (NAME,KIND_BOTTOM,PRICE,SEARCH_COUNT,SELL_COUNT,GOODS_COUNT,INFO,IMAGE,"OPTION",DELIVERY,CONTENT) values ('진라면','라면통조림',7300,0,0,3812,'부산','<figure class="image"><img style="aspect-ratio:290/290;" src="http://localhost/nobrand/upload/7d2df2b6-7466-4a40-8c77-1df4ffc75d98.jpg" width="290" height="290"></figure>','라면 5개입','대한통운','<figure class="image"><img style="aspect-ratio:290/290;" src="http://localhost/nobrand/upload/903fabaf-5683-4d66-9d50-e675b0c938b8.jpg" width="290" height="290"></figure>');
Insert into NOBRAND.GOODS (NAME,KIND_BOTTOM,PRICE,SEARCH_COUNT,SELL_COUNT,GOODS_COUNT,INFO,IMAGE,"OPTION",DELIVERY,CONTENT) values ('우유','유제품',2300,0,0,5,'서울','<figure class="image"><img src="http://localhost/nobrand/resources/goods/050a7449-b290-48d2-90b4-f6b355809f60.jpg"></figure>','우유1000ml','롯데택배','<figure class="image"><img src="http://localhost/nobrand/resources/goods/d13dfb19-63bb-4847-ab6a-01e4ff2a1f0e.jpg"></figure>');
Insert into NOBRAND.GOODS (NAME,KIND_BOTTOM,PRICE,SEARCH_COUNT,SELL_COUNT,GOODS_COUNT,INFO,IMAGE,"OPTION",DELIVERY,CONTENT) values ('콩','과일채소양곡',3600,0,0,10,'서울','<figure class="image"><img src="http://localhost/nobrand/resources/goods/c427395e-cf54-4449-8a9c-0f43a132a7c9.jpg"></figure>','특등급 국산콩','대한통운','<figure class="image"><img src="http://localhost/nobrand/resources/goods/14447239-5e0a-4c09-9a34-44ec6e2667fa.jpg"></figure>');
