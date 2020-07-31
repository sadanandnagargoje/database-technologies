show databases;
use student_db;

create view High_Rating as
select max(Rating) from CUSTOMERS group by Snum;

create view Count_City as
select City,Count(City) as 'Count' from SALESPEOPLE group by City;

create view avg_n as
select SALESPEOPLE.Sname,avg(ORDERS.AMT) as 'Average',count(ORDERS.AMT) as 'Count'
from ORDERS,SALESPEOPLE
where ORDERS.Snum=SALESPEOPLE.Snum
group by Sname;

create view SALESPERSON_MULTIPLE_CUSTOMERS AS
select SALESPEOPLE.Sname=CUSTOMERS.Cname
from SALESPEOPLE,CUSTOMERS
where SALESPEOPLE.Snum=CUSTOMERS.Snum;
