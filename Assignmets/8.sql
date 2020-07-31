show databases;
use student_db;


select Onum,Snum,AMT,AMT*(12/100) from ORDERS;

select max(Rating),City from CUSTOMERS;

select Rating,Cname,Snum from CUSTOMERS order by Rating DESC;

select count(Odate) 
"TOTAL ORDERS",Odate 
from ORDERS 
group by Odate
order by "TOTAL ORDERS" DESC;
