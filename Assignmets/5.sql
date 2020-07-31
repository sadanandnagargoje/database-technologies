show databases;
use sada;

select * from ORDERS where AMT>1000;

select Sname,City from SALESPEOPLE where City='London' AND Comm>.10;

select * from CUSTOMERS where Rating > 100 OR City='Rome';

Select * from ORDERS
where (AMT < 1000 OR
NOT (Odate = "1990-10-03"
AND Cnum > 2003));

Select * from ORDERS
where NOT ((Odate = "1990-10-03" OR Snum>1006) AND AMT >= 1500);

select * from SALESPEOPLE where Comm between .12 AND .14;