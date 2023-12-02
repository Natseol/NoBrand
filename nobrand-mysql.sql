create table nobrand.USERS (
    ID int auto_increment primary key,
    NAME varchar(14) NOT NULL,
    USERID varchar(20) NOT NULL UNIQUE,
    PASSWORD varchar(64) NOT NULL,
    PHONENUMBER varchar(30) NOT NULL,
    EMAILADDRESS varchar(50) NOT NULL,
    ADDRESS varchar(100) NOT NULL,
    CREATEAT timestamp DEFAULT current_timestamp NOT NULL
);

create table nobrand.GOODS (
    ID int auto_increment primary key ,
    PRICE int,
    SEARCH_COUNT int,
    SELL_COUNT int,
    GOODS_COUNT int,
    NAME varchar(70),
    KIND_TOP varchar(30),
    KIND_BOTTOM varchar(20),
    INFO varchar(30),
    IMAGE varchar(1000),
    GOODS_OPTION varchar(100),
    DELIVERY varchar(20),
    CONTENT long,
    GOODS_DELETE tinyint
);

create table nobrand.REVIEW(
    GOODS_ID int not null,
    USER_ID int not null,
    SCORE int not null,
    CONTENT long not null, 
    foreign key(GOODS_ID) REFERENCES GOODS(ID),
    foreign key(USER_ID) REFERENCES USERS(ID)
);
    
create table nobrand.BUYLIST (
    USER_ID int NOT NULL,
    GOODS_ID int NOT NULL,
    COUNT int NOT NULL,
    PRICE int NOT NULL,
    CREATEAT timestamp DEFAULT current_timestamp NOT NULL,
    foreign key(GOODS_ID) REFERENCES GOODS(ID),
    foreign key(USER_ID) REFERENCES USERS(ID)
);  