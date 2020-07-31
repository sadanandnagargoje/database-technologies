show databases;
use student_db;

select * from SALESPEOPLE 
where Snum IN (select Snum from CUSTOMERS group by Snum having count(Snum)>1);

delete from CUSTOMERS
where Cnum=
(select tempp.Cnum from
(select Cnum from CUSTOMERS
where Cnum not in
(select Cnum from ORDERS)) as tempp);

Update SALESPEOPLE set Comm = Comm + 0.20
where Snum=
(select Snum from
(select Snum,sum(AMT) as Amount from ORDERS
group by Snum having amount > 30000) as tempp);