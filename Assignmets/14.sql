show databases;
use student_db;

insert into SALESPEOPLE (City,Sname,Comm,Snum)
values ( 'San Jose','Blanco',NULL,1100);

delete from ORDERS  where cnum in (select Cnum from CUSTOMERS where Cname='Clemens');

select Cname,City,Rating from CUSTOMERS where City='Rome'
group by Cname;
update Customers SET Rating=Rating+100;

Update CUSTOMERS set
Snum=(select Snum from Salespeople where Sname='Serres')
where
Snum=(select Snum from Salespeople where Sname='Motika');
