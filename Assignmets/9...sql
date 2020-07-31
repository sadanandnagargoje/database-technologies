show databases;
use student_db;

select DISTINCT s1.Sname,s2.Sname,s1.City
from SALESPEOPLE s1,SALESPEOPLE s2
where s1.Sname>s2.Sname and s1.City=s2.City;

select Cname,City
from CUSTOMERS 
where Rating=(select Rating from CUSTOMERS where Cname='Hoffman');