show databases;
use sada;

select Onum,AMT,Odate from ORDERS;

select * from CUSTOMERS where Snum=1001;

select City,Sname,Snum,Comm from SALESPEOPLE;

select Rating,Cname from CUSTOMERS where City='San Jose';

select DISTINCT Snum from ORDERS;