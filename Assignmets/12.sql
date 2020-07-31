show databases;
use student_db;

select * from CUSTOMERS 
where Rating >= ANY
(select Rating from CUSTOMERS
where Snum in (select Snum from SALESPEOPLE where Sname='Serres'));

select Snum from SALESPEOPLE 
where (Snum,City) not in
(select Snum,City from CUSTOMERS);

select * from ORDERS
where AMT > ANY
(select Amt from ORDERS where Cnum in (select Cnum from CUSTOMERS where City = 'London'));

select * from ORDERS 
where Amt > (select min(Amt) from CUSTOMERS NATURAL JOIN ORDERS where City='London');