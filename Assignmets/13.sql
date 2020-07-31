show databases;
use student_db;

select Cname,City,'High Rating' Rating from CUSTOMERS
where Rating > 200
union
select Cname,City,'Low Rating' Rating from CUSTOMERS
where Rating <= 200;

select Sname,Snum,Cname from SALESPEOPLE
join CUSTOMERS using(Snum)
where Snum IN(select Snum from CUSTOMERS group by Snum having count(Snum) > 1)
order by Sname,Cname;

select Snum from SALESPEOPLE
where City='San Jose'
union
select DISTINCT Snum from ORDERS where Snum in
(select Snum from Orders where Odate like '10-03%');