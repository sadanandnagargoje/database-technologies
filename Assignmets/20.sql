show databases;
use student_db;

#Q1 Worked without any errors
create view DAILYORDERS as
select distinct Cnum,Snum,Onum,Odate from ORDERS;

#Q2 Showed Errors
create view Custotals as
select Cnum,Snum(AMT) Sum_AMT from ORDERS,CUSTOMERS
where Orders.Cnum=CUSTOMERS.Cnum
group by Cnum;

#Q3 Showed Errors
create view Thirdorders as
select * from DAILYORDERS
where Odate=’1990-10-03’;

#Q4 Worked with no errors
create view Nullcities as
select Snum,Sname,city from SALESPEOPLE
where City is NULL Or Sname between 'A' and 'MZ';

--------------------------------------------

#Q2
create view COMMISSIONS AS
select Snum,Comm from SALESPEOPLE
where Comm between 0.10 and 0.20
with check option;

----------------------------------------------

#Q3

create table ORDERS_DEMO03
(
  Onum int(5),
  AMT float(5,2),
  Odate date default(SYSDATE())
);

show tables;

insert into ORDERS_DEMO03 (Onum,AMT)
values (01,2);

select * from ORDERS_DEMO03;

create view ENTRYORDERS as
select * from ORDERS_DEMO03
where Onum in
(select Onum_Temp from
(select Onum Onum_Temp from ORDERS_DEMO03) AS Temp)
with check option;

alter table ORDERS_DEMO03 add primary key (Onum);
