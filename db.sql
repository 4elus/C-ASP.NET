--------------------------------------------------------
--  File created - суббота-мая-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_CLIENT
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_CLIENT"  MINVALUE 1 MAXVALUE 400001 INCREMENT BY 1 START WITH 11 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_COUNTRIES
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_COUNTRIES"  MINVALUE 3 MAXVALUE 400000 INCREMENT BY 1 START WITH 13 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_FILMS
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_FILMS"  MINVALUE 5 MAXVALUE 400000 INCREMENT BY 1 START WITH 10 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_FOR_FILM
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_FOR_FILM"  MINVALUE 28 MAXVALUE 400000 INCREMENT BY 1 START WITH 53 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_GENRES
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_GENRES"  MINVALUE 5 MAXVALUE 400000 INCREMENT BY 1 START WITH 11 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_INCREMENT
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_INCREMENT"  MINVALUE 1 MAXVALUE 400000 INCREMENT BY 1 START WITH 44 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_LIST_WORKERS
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_LIST_WORKERS"  MINVALUE 9 MAXVALUE 400000 INCREMENT BY 1 START WITH 14 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_POSITION
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_POSITION"  MINVALUE 6 MAXVALUE 400000 INCREMENT BY 1 START WITH 6 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_ROOMS
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_ROOMS"  MINVALUE 3 MAXVALUE 400000 INCREMENT BY 1 START WITH 3 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_STATUSES
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_STATUSES"  MINVALUE 4 MAXVALUE 400000 INCREMENT BY 1 START WITH 4 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_TICKET
--------------------------------------------------------

   CREATE SEQUENCE  "C#SAM"."SEQUENCE_TICKET"  MINVALUE 8 MAXVALUE 400000 INCREMENT BY 1 START WITH 28 CACHE 5 NOORDER  CYCLE   ;
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "C#SAM"."CATEGORIES" 
   (	"CATEG_ID" NUMBER(10,0), 
	"NAME_CATEG" VARCHAR2(10 BYTE), 
	"PRICE" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENTS
--------------------------------------------------------

  CREATE TABLE "C#SAM"."CLIENTS" 
   (	"CLIENT_ID" NUMBER(10,0), 
	"CLIENT_LOGIN" VARCHAR2(50 BYTE), 
	"CLIENT_PASSWORD" VARCHAR2(50 BYTE), 
	"CLIENT_ROLE" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "C#SAM"."COUNTRIES" 
   (	"COUNTY_ID" NUMBER(10,0), 
	"NAME_COUNTRY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FILMS
--------------------------------------------------------

  CREATE TABLE "C#SAM"."FILMS" 
   (	"FILM_ID" NUMBER(10,0), 
	"NAME_FILM" VARCHAR2(100 BYTE), 
	"ID_COUNTRY" NUMBER(10,0), 
	"ID_STUDIA" NUMBER(10,0), 
	"ID_GENRE" NUMBER(10,0), 
	"YEAR_FILMS" NUMBER(10,0) DEFAULT to_number(to_char(sysdate,'YYYY')), 
	"LENGTH_FILM" NUMBER(10,0), 
	"RATING" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GENRES
--------------------------------------------------------

  CREATE TABLE "C#SAM"."GENRES" 
   (	"GENRE_ID" NUMBER(10,0), 
	"NAME_GENRE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LISTJOBS
--------------------------------------------------------

  CREATE TABLE "C#SAM"."LISTJOBS" 
   (	"ID_WORKER" NUMBER(10,0), 
	"ID_FILM" NUMBER(10,0), 
	"ID_POS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LISTWORKERS
--------------------------------------------------------

  CREATE TABLE "C#SAM"."LISTWORKERS" 
   (	"WORKER_ID" NUMBER(10,0), 
	"WORKER_NAME" VARCHAR2(100 BYTE), 
	"WORKER_SURNAME" VARCHAR2(100 BYTE), 
	"WORKER_PATR" VARCHAR2(100 BYTE), 
	"DATE_BIRTH" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PLACES
--------------------------------------------------------

  CREATE TABLE "C#SAM"."PLACES" 
   (	"ROOM" NUMBER(10,0), 
	"VARIETY" NUMBER(10,0), 
	"PLACE" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POSITION
--------------------------------------------------------

  CREATE TABLE "C#SAM"."POSITION" 
   (	"ID_POS" NUMBER(10,0), 
	"NAME_POS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROOMS
--------------------------------------------------------

  CREATE TABLE "C#SAM"."ROOMS" 
   (	"ROOM_ID" NUMBER(10,0), 
	"NAME_ROOM" VARCHAR2(100 BYTE), 
	"CNT_PLACES" NUMBER(10,0), 
	"CATEG" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEANS
--------------------------------------------------------

  CREATE TABLE "C#SAM"."SEANS" 
   (	"ID_ROOM" NUMBER(10,0), 
	"DATETIME_FILM" DATE, 
	"ID_FILM" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table S_STAT
--------------------------------------------------------

  CREATE TABLE "C#SAM"."S_STAT" 
   (	"ID_TICKET" NUMBER(10,0), 
	"OLD_STATUS" VARCHAR2(100 BYTE), 
	"NEW_STATUS" VARCHAR2(100 BYTE), 
	"COL_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STATUSES
--------------------------------------------------------

  CREATE TABLE "C#SAM"."STATUSES" 
   (	"STATUS_ID" NUMBER(10,0), 
	"NAME_STATUS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDIES
--------------------------------------------------------

  CREATE TABLE "C#SAM"."STUDIES" 
   (	"STUDIA_ID" NUMBER(10,0), 
	"NAME_STUDIA" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TICKETS
--------------------------------------------------------

  CREATE TABLE "C#SAM"."TICKETS" 
   (	"TICKET_ID" NUMBER(10,0), 
	"DATETIME" DATE, 
	"ROOM" NUMBER(10,0), 
	"VARIETY" NUMBER(10,0), 
	"PLACE" NUMBER(10,0), 
	"STATUS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C#SAM.CATEGORIES
SET DEFINE OFF;
Insert into C#SAM.CATEGORIES (CATEG_ID,NAME_CATEG,PRICE) values ('1','Стандарт','150');
Insert into C#SAM.CATEGORIES (CATEG_ID,NAME_CATEG,PRICE) values ('2','VIP','300');
Insert into C#SAM.CATEGORIES (CATEG_ID,NAME_CATEG,PRICE) values ('3','IMAX','500');
Insert into C#SAM.CATEGORIES (CATEG_ID,NAME_CATEG,PRICE) values ('5','Бизнес','750');
REM INSERTING into C#SAM.CLIENTS
SET DEFINE OFF;
Insert into C#SAM.CLIENTS (CLIENT_ID,CLIENT_LOGIN,CLIENT_PASSWORD,CLIENT_ROLE) values ('1','Admin','admin','1 ');
Insert into C#SAM.CLIENTS (CLIENT_ID,CLIENT_LOGIN,CLIENT_PASSWORD,CLIENT_ROLE) values ('6','Alex','zver1999','0 ');
Insert into C#SAM.CLIENTS (CLIENT_ID,CLIENT_LOGIN,CLIENT_PASSWORD,CLIENT_ROLE) values ('7','Alexander','1999','0 ');
Insert into C#SAM.CLIENTS (CLIENT_ID,CLIENT_LOGIN,CLIENT_PASSWORD,CLIENT_ROLE) values ('2','User','user','0 ');
Insert into C#SAM.CLIENTS (CLIENT_ID,CLIENT_LOGIN,CLIENT_PASSWORD,CLIENT_ROLE) values ('3','Clover','agent','0 ');
REM INSERTING into C#SAM.COUNTRIES
SET DEFINE OFF;
Insert into C#SAM.COUNTRIES (COUNTY_ID,NAME_COUNTRY) values ('3','Великобритания');
Insert into C#SAM.COUNTRIES (COUNTY_ID,NAME_COUNTRY) values ('8','Румыния');
Insert into C#SAM.COUNTRIES (COUNTY_ID,NAME_COUNTRY) values ('1','США');
Insert into C#SAM.COUNTRIES (COUNTY_ID,NAME_COUNTRY) values ('2','Россия');
REM INSERTING into C#SAM.FILMS
SET DEFINE OFF;
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('5','Властелин колец 1','3','7','1','2001','184','9');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('7','Властелин колец. Две крепости','1','5','1','2002','191','8,78');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('31','Название фильма','1','6','1','2020','144','8,76');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('9','Оно 2','1','5','4','2020','120','8');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('11','28 панфиловцев','2','4','4','2017','155','8');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('27','Джентльмены','1','8','5','2020','193','8,7');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('38','Могучие рейнджеры','1','5','1','2017','124','7');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('39','Гарри Потер','3','6','1','2004','100','8,7');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('1','Мстители','1','1','1','2010','120','8,5');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('2','Белый тигр','2','4','2','2011','90','7,9');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('3','Мстители Финал','1','1','1','2019','180','9');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('48','Удивительное путешествие доктора Дулиттла','1','8','1','2020','93','7');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('15','Человек паук','1','1','1','2018','184','8,5');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('18','Человек паук 2','1','1','1','2021','184','8,5');
Insert into C#SAM.FILMS (FILM_ID,NAME_FILM,ID_COUNTRY,ID_STUDIA,ID_GENRE,YEAR_FILMS,LENGTH_FILM,RATING) values ('43','Никогда не сдавайся','1','5','5','2009','120','7');
REM INSERTING into C#SAM.GENRES
SET DEFINE OFF;
Insert into C#SAM.GENRES (GENRE_ID,NAME_GENRE) values ('4','Военный фильм');
Insert into C#SAM.GENRES (GENRE_ID,NAME_GENRE) values ('5','Криминал');
Insert into C#SAM.GENRES (GENRE_ID,NAME_GENRE) values ('1','Фэнтези');
Insert into C#SAM.GENRES (GENRE_ID,NAME_GENRE) values ('2','Детектив');
Insert into C#SAM.GENRES (GENRE_ID,NAME_GENRE) values ('3','Ужасы');
REM INSERTING into C#SAM.LISTJOBS
SET DEFINE OFF;
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('6','5','1');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('6','5','3');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('6','7','1');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('6','7','3');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('9','11','1');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('10','9','1');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('1','1','1');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('2','1','3');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('3','1','3');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('4','2','1');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('5','2','3');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('1','48','1');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('1','1','3');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('7','2','5');
Insert into C#SAM.LISTJOBS (ID_WORKER,ID_FILM,ID_POS) values ('8','2','4');
REM INSERTING into C#SAM.LISTWORKERS
SET DEFINE OFF;
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('6','Питер','Джексон','Роберт',to_date('31.10.87','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('9','Павел','Соколов','Андреевич',to_date('20.10.78','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('10','Мишель','Ростовски','Малович',to_date('12.06.88','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('1','Джозеф','Уидон',null,to_date('23.06.64','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('2','Роберт','Дауни','Джон',to_date('04.04.65','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('3','Крис','Эванс','Роберт',to_date('13.06.81','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('4','Карен','Шахназаров','Георгиевич ',to_date('08.07.52','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('5','Алексей ','Вертков ','Сергеевич ',to_date('31.03.82','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('7','Денис','Антошин','Сергеевив',to_date('09.12.72','DD.MM.RR'));
Insert into C#SAM.LISTWORKERS (WORKER_ID,WORKER_NAME,WORKER_SURNAME,WORKER_PATR,DATE_BIRTH) values ('8','Черенков','Алексей','Генадиевич',to_date('19.09.68','DD.MM.RR'));
REM INSERTING into C#SAM.PLACES
SET DEFINE OFF;
Insert into C#SAM.PLACES (ROOM,VARIETY,PLACE) values ('1','1','1');
Insert into C#SAM.PLACES (ROOM,VARIETY,PLACE) values ('1','1','2');
Insert into C#SAM.PLACES (ROOM,VARIETY,PLACE) values ('1','1','3');
REM INSERTING into C#SAM.POSITION
SET DEFINE OFF;
Insert into C#SAM.POSITION (ID_POS,NAME_POS) values ('1','Режиссер');
Insert into C#SAM.POSITION (ID_POS,NAME_POS) values ('2','Продюссер');
Insert into C#SAM.POSITION (ID_POS,NAME_POS) values ('3','Актер');
Insert into C#SAM.POSITION (ID_POS,NAME_POS) values ('4','Композитор');
Insert into C#SAM.POSITION (ID_POS,NAME_POS) values ('5','Сценарист');
REM INSERTING into C#SAM.ROOMS
SET DEFINE OFF;
Insert into C#SAM.ROOMS (ROOM_ID,NAME_ROOM,CNT_PLACES,CATEG) values ('1','A','30','1');
Insert into C#SAM.ROOMS (ROOM_ID,NAME_ROOM,CNT_PLACES,CATEG) values ('2','B','35','2');
REM INSERTING into C#SAM.SEANS
SET DEFINE OFF;
Insert into C#SAM.SEANS (ID_ROOM,DATETIME_FILM,ID_FILM) values ('1',to_date('12.12.19','DD.MM.RR'),'1');
Insert into C#SAM.SEANS (ID_ROOM,DATETIME_FILM,ID_FILM) values ('1',to_date('13.12.19','DD.MM.RR'),'1');
Insert into C#SAM.SEANS (ID_ROOM,DATETIME_FILM,ID_FILM) values ('1',to_date('14.12.19','DD.MM.RR'),'1');
Insert into C#SAM.SEANS (ID_ROOM,DATETIME_FILM,ID_FILM) values ('1',to_date('15.12.19','DD.MM.RR'),'1');
Insert into C#SAM.SEANS (ID_ROOM,DATETIME_FILM,ID_FILM) values ('2',to_date('13.12.19','DD.MM.RR'),'11');
Insert into C#SAM.SEANS (ID_ROOM,DATETIME_FILM,ID_FILM) values ('2',to_date('14.12.19','DD.MM.RR'),'11');
Insert into C#SAM.SEANS (ID_ROOM,DATETIME_FILM,ID_FILM) values ('1',to_date('15.12.19','DD.MM.RR'),'9');
REM INSERTING into C#SAM.S_STAT
SET DEFINE OFF;
Insert into C#SAM.S_STAT (ID_TICKET,OLD_STATUS,NEW_STATUS,COL_DATE) values ('4','Куплено','Куплено',to_date('15.05.20','DD.MM.RR'));
Insert into C#SAM.S_STAT (ID_TICKET,OLD_STATUS,NEW_STATUS,COL_DATE) values ('5','Куплено','Куплено',to_date('15.05.20','DD.MM.RR'));
Insert into C#SAM.S_STAT (ID_TICKET,OLD_STATUS,NEW_STATUS,COL_DATE) values ('3','Куплено','Бронь',to_date('05.03.20','DD.MM.RR'));
Insert into C#SAM.S_STAT (ID_TICKET,OLD_STATUS,NEW_STATUS,COL_DATE) values ('1','Свободно','Куплено',to_date('05.03.20','DD.MM.RR'));
Insert into C#SAM.S_STAT (ID_TICKET,OLD_STATUS,NEW_STATUS,COL_DATE) values ('6','Куплено','Куплено',to_date('15.05.20','DD.MM.RR'));
Insert into C#SAM.S_STAT (ID_TICKET,OLD_STATUS,NEW_STATUS,COL_DATE) values ('7','Куплено','Куплено',to_date('15.05.20','DD.MM.RR'));
Insert into C#SAM.S_STAT (ID_TICKET,OLD_STATUS,NEW_STATUS,COL_DATE) values ('1','Куплено','Свободно',to_date('26.02.20','DD.MM.RR'));
REM INSERTING into C#SAM.STATUSES
SET DEFINE OFF;
Insert into C#SAM.STATUSES (STATUS_ID,NAME_STATUS) values ('1','Свободно');
Insert into C#SAM.STATUSES (STATUS_ID,NAME_STATUS) values ('2','Бронь');
Insert into C#SAM.STATUSES (STATUS_ID,NAME_STATUS) values ('3','Куплено');
REM INSERTING into C#SAM.STUDIES
SET DEFINE OFF;
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('5','New Line Cinema');
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('6','United Artists');
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('7','Warner Bros');
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('8','MIRAMAX');
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('1','Marvel');
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('2','DC');
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('3','DreamWorks');
Insert into C#SAM.STUDIES (STUDIA_ID,NAME_STUDIA) values ('4','ТНТ');
REM INSERTING into C#SAM.TICKETS
SET DEFINE OFF;
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('1',to_date('12.12.19','DD.MM.RR'),'1','1','1','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('2',to_date('14.12.19','DD.MM.RR'),'1','1','2','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('3',to_date('25.12.19','DD.MM.RR'),'1','1','3','2');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('5',to_date('14.12.19','DD.MM.RR'),'2','11','1','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('4',to_date('12.12.19','DD.MM.RR'),'1','11','2','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('6',to_date('13.12.19','DD.MM.RR'),'2','9','3','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('8',to_date('14.12.19','DD.MM.RR'),'1','9','1','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('13',to_date('17.05.20','DD.MM.RR'),'1','5','1','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('23',to_date('20.05.20','DD.MM.RR'),'1','5','2','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('18',to_date('18.05.20','DD.MM.RR'),'2','48','5','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('25',to_date('20.05.20','DD.MM.RR'),'1','5','3','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('7',to_date('15.12.19','DD.MM.RR'),'1','9','1','3');
Insert into C#SAM.TICKETS (TICKET_ID,DATETIME,ROOM,VARIETY,PLACE,STATUS) values ('14',to_date('17.05.20','DD.MM.RR'),'2','7','6','2');
--------------------------------------------------------
--  DDL for Index CATEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."CATEG_PK" ON "C#SAM"."CATEGORIES" ("CATEG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STUDIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."STUDIA_PK" ON "C#SAM"."STUDIES" ("STUDIA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GENRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."GENRE_PK" ON "C#SAM"."GENRES" ("GENRE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."POS_PK" ON "C#SAM"."POSITION" ("ID_POS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COUNTY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."COUNTY_PK" ON "C#SAM"."COUNTRIES" ("COUNTY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FILM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."FILM_PK" ON "C#SAM"."FILMS" ("FILM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STATUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."STATUS_PK" ON "C#SAM"."STATUSES" ("STATUS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WORKER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."WORKER_PK" ON "C#SAM"."LISTWORKERS" ("WORKER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TICKET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."TICKET_PK" ON "C#SAM"."TICKETS" ("TICKET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROOMS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C#SAM"."ROOMS_PK" ON "C#SAM"."ROOMS" ("ROOM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger CHECK_INSERT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."CHECK_INSERT" 
    BEFORE INSERT on films
    FOR EACH ROW
    BEGIN
        IF :new.YEAR_FILMS >  EXTRACT(year from sysdate) THEN
            raise_application_error(-20001,'Ошибка. Такой год не наступил!');
        END IF; 
    END;
/
ALTER TRIGGER "C#SAM"."CHECK_INSERT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ID_INCREAMENT_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."ID_INCREAMENT_TRIGGER" 
    BEFORE INSERT on categories
    FOR EACH ROW
    BEGIN
        SELECT sequence_films.NEXTVAL INTO :new.categ_id from dual;
    END; 
/
ALTER TRIGGER "C#SAM"."ID_INCREAMENT_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger POSITION_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."POSITION_TRIGGER" 
    BEFORE INSERT on position
    FOR EACH ROW
    BEGIN
        SELECT sequence_position.NEXTVAL INTO :new.id_pos from dual;
    END;
/
ALTER TRIGGER "C#SAM"."POSITION_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger S_STAT_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."S_STAT_TRIGGER" 
    FOR UPDATE ON tickets
    COMPOUND TRIGGER
    BEFORE STATEMENT IS
     BEGIN
       NULL;
     END BEFORE STATEMENT;

     --Выполняются до изменения строки :NEW, :OLD доступны
     BEFORE EACH ROW IS
     BEGIN
       NULL;
     END BEFORE EACH ROW;

     --Выполняются после изменения строки :NEW, :OLD доступны
     AFTER EACH ROW IS
     BEGIN
        INSERT INTO s_stat VALUES(:old.ticket_id, get_name_status(:old.status), get_name_status(:new.status), to_date(sysdate));
     END AFTER EACH ROW;

     --после оператора DML
     AFTER STATEMENT IS
     BEGIN
       NULL;
     END AFTER STATEMENT;
END;
/
ALTER TRIGGER "C#SAM"."S_STAT_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_CLIENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_CLIENT" 
    BEFORE INSERT on clients
    FOR EACH ROW
    BEGIN
        SELECT sequence_client.NEXTVAL INTO :new.client_id from dual;
    END;  
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_CLIENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_COUNTRIES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_COUNTRIES" 
    BEFORE INSERT on countries
    FOR EACH ROW
    BEGIN
        SELECT sequence_countries.NEXTVAL INTO :new.county_id from dual;
    END; 
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_COUNTRIES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_F
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_F" 
    BEFORE INSERT on listworkers
    FOR EACH ROW
    BEGIN
        SELECT sequence_list_workers.NEXTVAL INTO :new.worker_id from dual;
    END; 
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_F" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_FILM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_FILM" 
    BEFORE INSERT on films
    FOR EACH ROW
    BEGIN
        SELECT sequence_for_film.NEXTVAL INTO :new.film_id from dual;
    END; 
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_FILM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_GENRES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_GENRES" 
    BEFORE INSERT on genres
    FOR EACH ROW
    BEGIN
        SELECT sequence_genres.NEXTVAL INTO :new.genre_id from dual;
    END; 
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_GENRES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_ROOM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_ROOM" 
    BEFORE INSERT on rooms
    FOR EACH ROW
    BEGIN
        SELECT sequence_rooms.NEXTVAL INTO :new.room_id from dual;
    END; 
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_ROOM" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_STATUSES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_STATUSES" 
    BEFORE INSERT on statuses
    FOR EACH ROW
    BEGIN
        SELECT sequence_statuses.NEXTVAL INTO :new.status_id from dual;
    END;  
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_STATUSES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_STUDIES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_STUDIES" 
    BEFORE INSERT on studies
    FOR EACH ROW
    BEGIN
        SELECT sequence_statuses.NEXTVAL INTO :new.studia_id from dual;
    END;   
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_STUDIES" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGER_FOR_TICKETS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C#SAM"."TRIGGER_FOR_TICKETS" 
    BEFORE INSERT on tickets
    FOR EACH ROW
    BEGIN
        SELECT sequence_ticket.NEXTVAL INTO :new.ticket_id from dual;
    END; 
/
ALTER TRIGGER "C#SAM"."TRIGGER_FOR_TICKETS" ENABLE;
--------------------------------------------------------
--  DDL for Procedure DOHOD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C#SAM"."DOHOD" (film IN VARCHAR2, date_start IN DATE, date_end IN DATE)
IS
    roomid NUMBER;
    cnt_place NUMBER;    
    id_categ NUMBER;
    price_categ NUMBER;
    total_pot NUMBER;
    total_fact NUMBER;

    CURSOR sotr_cur2 IS SELECT DISTINCT id_room FROM seans;   
    CURSOR sotr_cnt IS SELECT id_room,  COUNT(*) cnt FROM seans 
                       WHERE TRUNC(datetime_film) >= date_start AND TRUNC(datetime_film) <= date_end
                       GROUP BY id_room;

    CURSOR cur_fact IS SELECT room, status, datetime FROM tickets
                       WHERE TRUNC(datetime) >= to_date('14.12.2019','dd.mm.yyyy') AND TRUNC(datetime) <= to_date('15.12.2019','dd.mm.yyyy');
    CURSOR cur_fact2 IS SELECT id_room, datetime_film FROM seans; 
BEGIN 
    total_pot := 0;
     FOR rec in sotr_cnt LOOP
        FOR rec2 in sotr_cur2 LOOP
            IF rec.id_room = rec2.id_room THEN
                SELECT cnt_places, categ INTO cnt_place, id_categ FROM rooms WHERE room_id = rec2.id_room; 
                SELECT price INTO price_categ FROM categories WHERE categ_id = id_categ; 
                total_pot := total_pot + ((cnt_place * price_categ) * rec.cnt);
            END IF;
        END LOOP;


      END LOOP;
      DBMS_OUTPUT.enable;
      DBMS_OUTPUT.put_line('Фильм: ' || film);

     DBMS_OUTPUT.enable;
     DBMS_OUTPUT.put_line('Потенциальный доход: ' || total_pot);

     total_fact := 0;
     FOR rec in cur_fact LOOP
        IF rec.status = 3 THEN
            FOR rec2 in cur_fact2 LOOP
                IF TRUNC(rec2.datetime_film) = TRUNC(rec.datetime) AND rec2.id_room = rec.room THEN
                    SELECT categ INTO id_categ FROM rooms WHERE room_id = rec2.id_room; 
                    SELECT price INTO price_categ FROM categories WHERE categ_id = id_categ;    
                    total_fact := total_fact + price_categ;
                END IF;
            END LOOP;
        END IF;
     END LOOP;

    DBMS_OUTPUT.enable;
    DBMS_OUTPUT.put_line('Фактические доход: ' || total_fact);
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_TABLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C#SAM"."UPDATE_TABLE" 
IS
    v_surname listworkers.worker_surname%TYPE;
    v_name_pos position.name_pos%TYPE;
    v_name_film films.name_film%TYPE;

    v_name_pos2 position.name_pos%TYPE;
    v_name_film2 films.name_film%TYPE;
    v_surname2 listworkers.worker_surname%TYPE; 

     CURSOR sotr_cur IS  SELECT worker_surname, name_pos, name_film FROM listworkers
                            INNER JOIN listjobs ON listworkers.worker_id = listjobs.id_worker
                            INNER JOIN position ON listjobs.id_pos = position.id_pos
                            INNER JOIN films ON films.film_id = listjobs.id_film
                            GROUP BY listworkers.worker_surname, position.name_pos, name_film, listjobs.id_worker;

    CURSOR sotr_cur2 IS  SELECT name_pos, films.name_film, worker_surname FROM listworkers
                            INNER JOIN listjobs ON listworkers.worker_id = listjobs.id_worker
                            INNER JOIN position ON listjobs.id_pos = position.id_pos
                            INNER JOIN films ON films.film_id = listjobs.id_film
                            WHERE name_pos = 'Актер'
                            GROUP BY listworkers.worker_surname, position.name_pos, name_film, listjobs.id_worker;

    was BOOLEAN;                            
BEGIN 
     was := false;
   FOR rec in sotr_cur LOOP
            was := true;
            IF rec.name_pos = 'Режиссер' THEN
                FOR rec2 in sotr_cur2 LOOP 


                    IF rec2.worker_surname = rec.worker_surname AND rec2.name_pos = 'Актер' AND rec.name_film = rec2.name_film THEN
                        DBMS_OUTPUT.enable;
                        DBMS_OUTPUT.put_line(rec.worker_surname ||  ': ' || rec2.name_film || ' - ' ||  rec.name_pos || ' | ' || rec2.name_pos);
                    END IF;    
                END LOOP;
            END IF;
    END LOOP;  
END;

/
--------------------------------------------------------
--  DDL for Package LAB_PACKAGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "C#SAM"."LAB_PACKAGE" AS
   FUNCTION calc_year(name_fil IN VARCHAR2, surname IN VARCHAR2) RETURN VARCHAR2;
   FUNCTION get_length_film(name_fil IN VARCHAR2) RETURN VARCHAR2;
   FUNCTION get_short_FIO(code IN NUMBER) RETURN VARCHAR2 ;
   PROCEDURE update_table;
   PROCEDURE dohod(film IN VARCHAR2, date_start IN DATE, date_end IN DATE);
END lab_package;

/
--------------------------------------------------------
--  DDL for Package Body LAB_PACKAGE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "C#SAM"."LAB_PACKAGE" IS
    FUNCTION calc_year(name_fil IN VARCHAR2, surname IN VARCHAR2) RETURN VARCHAR2 
    IS
        year_film NUMBER(10);
        year_actor NUMBER(10);
        worker_n VARCHAR(18);
        s_year VARCHAR(16);
        total NUMBER(10);
    BEGIN
        total := 0;
        SELECT worker_name INTO worker_n FROM listworkers WHERE worker_surname = surname;
        SELECT year_films INTO year_film FROM films WHERE name_film = name_fil;
        SELECT EXTRACT(year from date_birth) INTO year_actor FROM listworkers WHERE worker_surname = surname;

        total := ABS(year_film - year_actor);

        IF total > 10 AND total < 20 THEN
            s_year := ' лет ';
        ELSIF SUBSTR(total, -1, 1) > 1 AND SUBSTR(total, -1, 1) < 5 THEN
            s_year := ' года' ;
        ELSIF total = 1 THEN
            s_year := ' год' ;
        ELSE
            s_year := ' лет ';
        END IF;
        RETURN worker_n || ' ' || surname || ': ' || total || s_year;
    END;

    FUNCTION get_length_film(name_fil IN VARCHAR2) RETURN VARCHAR2 
    IS
        len_film NUMBER(10);
        hour_film NUMBER(10);
        min_film NUMBER(10);

    BEGIN
        hour_film := 0;
        min_film := 0;

        SELECT length_film INTO len_film FROM films WHERE name_film = name_fil;

        hour_film := FLOOR(len_film / 60);
        min_film := len_film - (60 * hour_film);


        RETURN name_fil || ': ' || hour_film || ' ч. ' ||  min_film || ' м.';
    END;

    FUNCTION get_short_FIO(code IN NUMBER) RETURN VARCHAR2 
    IS
        full_surname VARCHAR2(32);
        short_name VARCHAR2(32);
        short_patr VARCHAR2(32);
    BEGIN
        SELECT worker_surname INTO full_surname FROM listworkers WHERE worker_id = code;
        SELECT worker_name INTO short_name FROM listworkers WHERE worker_id = code;
        SELECT worker_patr INTO short_patr FROM listworkers WHERE worker_id = code;

        IF LENGTH(short_patr) > 0 AND LENGTH(short_name) > 0 THEN
             RETURN full_surname || ' ' || SUBSTR(short_name, 1, 1) || '.' ||  SUBSTR(short_patr, 1, 1) || '.';
        ELSE
             RETURN full_surname || ' ' || SUBSTR(short_name, 1, 1) || '.';
        END IF;

        --RETURN full_surname || ' ' || SUBSTR(short_name, 1, 1) || '.' ||  SUBSTR(short_patr, 1, 1) || '.';
    END;

    PROCEDURE update_table
    IS
        v_surname listworkers.worker_surname%TYPE;
        v_name_pos position.name_pos%TYPE;
        v_name_film films.name_film%TYPE;

        v_name_pos2 position.name_pos%TYPE;
        v_name_film2 films.name_film%TYPE;
        v_surname2 listworkers.worker_surname%TYPE; 

         CURSOR sotr_cur IS  SELECT worker_surname, name_pos, name_film FROM listworkers
                                INNER JOIN listjobs ON listworkers.worker_id = listjobs.id_worker
                                INNER JOIN position ON listjobs.id_pos = position.id_pos
                                INNER JOIN films ON films.film_id = listjobs.id_film
                                GROUP BY listworkers.worker_surname, position.name_pos, name_film, listjobs.id_worker;

        CURSOR sotr_cur2 IS  SELECT name_pos, films.name_film, worker_surname FROM listworkers
                                INNER JOIN listjobs ON listworkers.worker_id = listjobs.id_worker
                                INNER JOIN position ON listjobs.id_pos = position.id_pos
                                INNER JOIN films ON films.film_id = listjobs.id_film
                                WHERE name_pos = 'Актер'
                                GROUP BY listworkers.worker_surname, position.name_pos, name_film, listjobs.id_worker;

        was BOOLEAN;                            
    BEGIN 
         was := false;
       FOR rec in sotr_cur LOOP
                was := true;
                IF rec.name_pos = 'Режиссер' THEN
                    FOR rec2 in sotr_cur2 LOOP 


                        IF rec2.worker_surname = rec.worker_surname AND rec2.name_pos = 'Актер' AND rec.name_film = rec2.name_film THEN
                            DBMS_OUTPUT.enable;
                            DBMS_OUTPUT.put_line(rec.worker_surname ||  ': ' || rec2.name_film || ' - ' ||  rec.name_pos || ' | ' || rec2.name_pos);
                        END IF;    
                    END LOOP;
                END IF;
        END LOOP;  
    END;
    PROCEDURE dohod(film IN VARCHAR2, date_start IN DATE, date_end IN DATE)
IS
    roomid NUMBER;
    cnt_place NUMBER;    
    id_categ NUMBER;
    price_categ NUMBER;
    total_pot NUMBER;
    total_fact NUMBER;

    CURSOR sotr_cur2 IS SELECT DISTINCT id_room, id_film FROM seans;   
    CURSOR sotr_cnt IS SELECT id_room, id_film,  COUNT(*) cnt FROM seans 
                       WHERE TRUNC(datetime_film) >= date_start AND TRUNC(datetime_film) <= date_end AND id_film = get_id_film(film)
                       GROUP BY id_room, id_film;

    CURSOR cur_fact IS SELECT room, status, datetime FROM tickets
                       WHERE TRUNC(datetime) >= date_start AND TRUNC(datetime) <= date_end;
    CURSOR cur_fact2 IS SELECT id_room, datetime_film FROM seans WHERE id_film = get_id_film(film); 
BEGIN 
    total_pot := 0;
     FOR rec in sotr_cnt LOOP
        FOR rec2 in sotr_cur2 LOOP
            IF rec.id_room = rec2.id_room AND rec.id_film = rec2.id_film THEN
                SELECT cnt_places, categ INTO cnt_place, id_categ FROM rooms WHERE room_id = rec2.id_room; 
                SELECT price INTO price_categ FROM categories WHERE categ_id = id_categ; 
                total_pot := total_pot + ((cnt_place * price_categ) * rec.cnt);
            END IF;
        END LOOP;


      END LOOP;
      DBMS_OUTPUT.enable;
      DBMS_OUTPUT.put_line('Фильм: ' || film);

     DBMS_OUTPUT.enable;
     DBMS_OUTPUT.put_line('Потенциальный доход: ' || total_pot);

     total_fact := 0;
     FOR rec in cur_fact LOOP
        IF rec.status = 3 THEN
            FOR rec2 in cur_fact2 LOOP
                IF TRUNC(rec2.datetime_film) = TRUNC(rec.datetime) AND rec2.id_room = rec.room THEN
                    SELECT categ INTO id_categ FROM rooms WHERE room_id = rec2.id_room; 
                    SELECT price INTO price_categ FROM categories WHERE categ_id = id_categ;    
                    total_fact := total_fact + price_categ;
                END IF;
            END LOOP;
        END IF;
     END LOOP;

    DBMS_OUTPUT.enable;
    DBMS_OUTPUT.put_line('Фактические доход: ' || total_fact);
END;
END lab_package;

/
--------------------------------------------------------
--  DDL for Function CALC_YEAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C#SAM"."CALC_YEAR" (name_fil IN VARCHAR2, surname IN VARCHAR2) RETURN VARCHAR2 
IS
year_film NUMBER(10);
year_actor NUMBER(10);
worker_n VARCHAR(16);

BEGIN

SELECT worker_name INTO worker_n FROM listworkers WHERE worker_surname = surname;
SELECT year_films INTO year_film FROM films WHERE name_film = name_fil;
SELECT EXTRACT(year from date_birth) INTO year_actor FROM listworkers WHERE worker_surname = surname;


RETURN worker_n || ' ' || surname || ': ' || ABS(year_film - year_actor);
END;

/
--------------------------------------------------------
--  DDL for Function DOHODFILM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C#SAM"."DOHODFILM" (film IN VARCHAR2, date_start IN DATE, date_end IN DATE) RETURN VARCHAR2
IS
-- Объявление переменных
    roomid NUMBER;
    cnt_place NUMBER;    
    id_categ NUMBER;
    price_categ NUMBER;
    total_pot NUMBER;
    total_fact NUMBER;
	my_result VARCHAR(32000);

  -- Объявление курсоров
    CURSOR sotr_cur2 IS SELECT DISTINCT id_room, id_film FROM seans;  -- берем все сеансы  
    CURSOR sotr_cnt IS SELECT id_room, id_film,  COUNT(*) cnt FROM seans 
                       WHERE TRUNC(datetime_film) >= date_start AND TRUNC(datetime_film) <= date_end AND id_film = get_id_film(film) --берем только те сеансы, которые удовлетворяют промежутку дат
                       GROUP BY id_room, id_film;

    CURSOR cur_fact IS SELECT room, status, datetime FROM tickets -- берем все билеты
                       WHERE TRUNC(datetime) >= date_start AND TRUNC(datetime) <= date_end;
    CURSOR cur_fact2 IS SELECT id_room, datetime_film FROM seans WHERE id_film = get_id_film(film);  -- интересующий нас фильм
BEGIN 
    total_pot := 0;
    my_result := '';
	-- Подсчет потенциального дохода
     FOR rec in sotr_cnt LOOP
        FOR rec2 in sotr_cur2 LOOP
            IF rec.id_room = rec2.id_room AND rec.id_film = rec2.id_film THEN
                SELECT cnt_places, categ INTO cnt_place, id_categ FROM rooms WHERE room_id = rec2.id_room; 
                SELECT price INTO price_categ FROM categories WHERE categ_id = id_categ; 
                total_pot := total_pot + ((cnt_place * price_categ) * rec.cnt);
            END IF;
        END LOOP;


      END LOOP;
      DBMS_OUTPUT.enable;
      DBMS_OUTPUT.put_line('Фильм: ' || film);
      my_result := 'Фильм: ' || film || '.';

     DBMS_OUTPUT.enable;
     DBMS_OUTPUT.put_line('Потенциальный доход: ' || total_pot);
      my_result := my_result || chr(13)|| chr(10) || ' Потенциальный доход: ' || total_pot || ' руб. ';
     total_fact := 0;
     FOR rec in cur_fact LOOP
        IF rec.status = 3 THEN
		-- Подсчет фактического дохода
            FOR rec2 in cur_fact2 LOOP
			-- Если дата и зал удовлетворяют условию, то заходим в блок IF
                IF TRUNC(rec2.datetime_film) = TRUNC(rec.datetime) AND rec2.id_room = rec.room THEN
                    SELECT categ INTO id_categ FROM rooms WHERE room_id = rec2.id_room; -- выбираем категорию
                    SELECT price INTO price_categ FROM categories WHERE categ_id = id_categ;    -- сумма места по категоии
                    total_fact := total_fact + price_categ;
                END IF;
            END LOOP;
        END IF;
     END LOOP;

	 -- Вывод на экран
    DBMS_OUTPUT.enable;
    DBMS_OUTPUT.put_line('Фактические доход: ' || total_fact);
     my_result := my_result || chr(13) || ' Фактические доход: ' || total_fact || ' руб.';

     RETURN my_result;
END;

/
--------------------------------------------------------
--  DDL for Function GET_ID_FILM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C#SAM"."GET_ID_FILM" (names IN VARCHAR2) RETURN VARCHAR2 
IS

c NUMBER(10);

BEGIN
    SELECT film_id INTO c FROM films WHERE name_film = names; -- Получаю ID Film по его имени

    RETURN c;
END;

/
--------------------------------------------------------
--  DDL for Function GET_LENGTH_FILM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C#SAM"."GET_LENGTH_FILM" (name_fil IN VARCHAR2) RETURN VARCHAR2 
    IS
        len_film NUMBER(10);
        hour_film NUMBER(10);
        min_film NUMBER(10);

    BEGIN
        hour_film := 0;
        min_film := 0;

        SELECT length_film INTO len_film FROM films WHERE name_film = name_fil;

        hour_film := FLOOR(len_film / 60);
        min_film := len_film - (60 * hour_film);


        RETURN name_fil || ': ' || hour_film || ' ч. ' ||  min_film || ' м.';
    END;

/
--------------------------------------------------------
--  DDL for Function GET_NAME_STATUS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C#SAM"."GET_NAME_STATUS" (num_in IN NUMBER) RETURN VARCHAR2 
IS

res VARCHAR2(32);

BEGIN
     IF num_in = 1 THEN
        res := 'Свободно';
     ELSIF num_in = 2 THEN   
        res := 'Бронь';
     ELSE
       res := 'Куплено';
     END IF;

    RETURN res;
END;

/
--------------------------------------------------------
--  DDL for Function GET_SHORT_FIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C#SAM"."GET_SHORT_FIO" (code IN NUMBER) RETURN VARCHAR2 
    IS
        full_surname VARCHAR2(32);
        short_name VARCHAR2(32);
        short_patr VARCHAR2(32);

    BEGIN
        SELECT worker_surname INTO full_surname FROM listworkers WHERE worker_id = code;
        SELECT worker_name INTO short_name FROM listworkers WHERE worker_id = code;
        SELECT worker_patr INTO short_patr FROM listworkers WHERE worker_id = code;

        RETURN full_surname || ' ' || SUBSTR(short_name, 1, 1) || '.' ||  SUBSTR(short_patr, 1, 1) || '.';
    END;

/
--------------------------------------------------------
--  Constraints for Table CLIENTS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."CLIENTS" MODIFY ("CLIENT_ROLE" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."CLIENTS" MODIFY ("CLIENT_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."CLIENTS" MODIFY ("CLIENT_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."CLIENTS" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LISTJOBS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."LISTJOBS" MODIFY ("ID_POS" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."LISTJOBS" MODIFY ("ID_FILM" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."LISTJOBS" MODIFY ("ID_WORKER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROOMS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."ROOMS" ADD CONSTRAINT "ROOMS_PK" PRIMARY KEY ("ROOM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."ROOMS" MODIFY ("ROOM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table S_STAT
--------------------------------------------------------

  ALTER TABLE "C#SAM"."S_STAT" MODIFY ("ID_TICKET" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENRES
--------------------------------------------------------

  ALTER TABLE "C#SAM"."GENRES" ADD CONSTRAINT "GENRE_PK" PRIMARY KEY ("GENRE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."GENRES" MODIFY ("GENRE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "C#SAM"."COUNTRIES" ADD CONSTRAINT "COUNTY_PK" PRIMARY KEY ("COUNTY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."COUNTRIES" MODIFY ("COUNTY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSITION
--------------------------------------------------------

  ALTER TABLE "C#SAM"."POSITION" ADD CONSTRAINT "POS_PK" PRIMARY KEY ("ID_POS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."POSITION" MODIFY ("ID_POS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "C#SAM"."CATEGORIES" ADD CONSTRAINT "CATEG_PK" PRIMARY KEY ("CATEG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."CATEGORIES" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."CATEGORIES" MODIFY ("NAME_CATEG" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."CATEGORIES" MODIFY ("CATEG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TICKETS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."TICKETS" ADD CONSTRAINT "TICKET_PK" PRIMARY KEY ("TICKET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."TICKETS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."TICKETS" MODIFY ("PLACE" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."TICKETS" MODIFY ("VARIETY" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."TICKETS" MODIFY ("ROOM" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."TICKETS" MODIFY ("TICKET_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEANS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."SEANS" MODIFY ("ID_ROOM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STATUSES
--------------------------------------------------------

  ALTER TABLE "C#SAM"."STATUSES" ADD CONSTRAINT "STATUS_PK" PRIMARY KEY ("STATUS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."STATUSES" MODIFY ("STATUS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LISTWORKERS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."LISTWORKERS" ADD CONSTRAINT "WORKER_PK" PRIMARY KEY ("WORKER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."LISTWORKERS" MODIFY ("WORKER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDIES
--------------------------------------------------------

  ALTER TABLE "C#SAM"."STUDIES" ADD CONSTRAINT "STUDIA_PK" PRIMARY KEY ("STUDIA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."STUDIES" MODIFY ("STUDIA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILMS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."FILMS" ADD CONSTRAINT "FILM_PK" PRIMARY KEY ("FILM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C#SAM"."FILMS" MODIFY ("LENGTH_FILM" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."FILMS" MODIFY ("ID_GENRE" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."FILMS" MODIFY ("ID_STUDIA" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."FILMS" MODIFY ("ID_COUNTRY" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."FILMS" MODIFY ("NAME_FILM" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."FILMS" MODIFY ("FILM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLACES
--------------------------------------------------------

  ALTER TABLE "C#SAM"."PLACES" MODIFY ("PLACE" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."PLACES" MODIFY ("VARIETY" NOT NULL ENABLE);
  ALTER TABLE "C#SAM"."PLACES" MODIFY ("ROOM" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FILMS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."FILMS" ADD CONSTRAINT "FK_COUNTRY" FOREIGN KEY ("ID_COUNTRY")
	  REFERENCES "C#SAM"."COUNTRIES" ("COUNTY_ID") ENABLE;
  ALTER TABLE "C#SAM"."FILMS" ADD CONSTRAINT "FK_GENRE" FOREIGN KEY ("ID_GENRE")
	  REFERENCES "C#SAM"."GENRES" ("GENRE_ID") ENABLE;
  ALTER TABLE "C#SAM"."FILMS" ADD CONSTRAINT "FK_STUDIA" FOREIGN KEY ("ID_STUDIA")
	  REFERENCES "C#SAM"."STUDIES" ("STUDIA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LISTJOBS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."LISTJOBS" ADD CONSTRAINT "FK_FILM_JOBS" FOREIGN KEY ("ID_FILM")
	  REFERENCES "C#SAM"."FILMS" ("FILM_ID") ENABLE;
  ALTER TABLE "C#SAM"."LISTJOBS" ADD CONSTRAINT "FK_POS_JOBS" FOREIGN KEY ("ID_POS")
	  REFERENCES "C#SAM"."POSITION" ("ID_POS") ENABLE;
  ALTER TABLE "C#SAM"."LISTJOBS" ADD CONSTRAINT "FK_WORKER_JOBS" FOREIGN KEY ("ID_WORKER")
	  REFERENCES "C#SAM"."LISTWORKERS" ("WORKER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ROOMS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."ROOMS" ADD CONSTRAINT "FK_ROOMS_CATEG" FOREIGN KEY ("CATEG")
	  REFERENCES "C#SAM"."CATEGORIES" ("CATEG_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEANS
--------------------------------------------------------

  ALTER TABLE "C#SAM"."SEANS" ADD CONSTRAINT "FK_FILM_SEANS" FOREIGN KEY ("ID_FILM")
	  REFERENCES "C#SAM"."FILMS" ("FILM_ID") ENABLE;
  ALTER TABLE "C#SAM"."SEANS" ADD CONSTRAINT "FK_ROOM_SEANS" FOREIGN KEY ("ID_ROOM")
	  REFERENCES "C#SAM"."ROOMS" ("ROOM_ID") ENABLE;
