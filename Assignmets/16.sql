show databases;
use student_db;

create index D_ORDERS on ORDERS(Odate);

DESCRIBE Orders;

create unique index ORDERS_Onum on ORDERS(onum);

create INDEX I_Date on ORDERS (Odate);

alter table CUSTOMERS modify primary key(Rating);

