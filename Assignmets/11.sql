show databases;
use student_db;

select Onum,Cnum from ORDERS
where Cnum=
(select Cnum from CUSTOMERS
where Cname='Cisneros');

select Cname,Rating from CUSTOMERS
where Cnum in
(select Cnum from ORDERS where amt>(select avg(amt) from ORDERS));

select sum(amt)
from ORDERS
group by Snum
having sum(amt) > (select max(amt) from ORDERS);