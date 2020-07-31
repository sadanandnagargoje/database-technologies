show databases;
use student_db;

select count(Onum) from ORDERS where Odate = '1990-10-03';

select count(Cname) from CUSTOMERS where Cname is not null;

select min(amt) from ORDERS group by Onum;

select * from CUSTOMERS where Cname like 'G%';

select max(Rating) from CUSTOMERS;

select count(Odate) || 'SALESPEOPLE REGISTRATION' "TOTAL",Odate from ORDERS group by Odate;

