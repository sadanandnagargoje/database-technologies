show databases;
use student_db;

create table CityOrders as
select ORDERS.Onum,ORDERS.AMT,ORDERS.Snum,CUSTOMERS.Cnum,CUSTOMERS.City
from ORDERS,CUSTOMERS
where CUSTOMERS.Cnum=ORDERS.Cnum;

alter table CityOrders add primary key (Onum);

alter table CityOrders add column prev int;
alter table CityOrders ADD constraint FK_City foreign key(prev) references ORDERS (Onum);
alter table CUSTOMERS modify Cnum int(4) NOT NULL;
alter table CUSTOMERS add primary key (Cnum);
alter table CityOrders add constraint Cnum_fk foreign key (Cnum) references CUSTOMERS(Cnum);