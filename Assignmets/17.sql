show databases;
use student_db;

create table ORDERS1
(
Onum int(12),
Cnum int(12),
Snum int(12),
check (Onum != Cnum and Onum != Snum and Cnum != Snum)
);

show tables;

create table SALESPEOPLE1
(
sum int(12) primary key, 
check(Status between 'A' and 'M'),
Comm float(3,2), 
default (0.10)
);

show tables;

create table ORDERS2
(
Snum int(12) NOT NULL,
Cnum int(12) NOT NULL,
Onum int(12) NOT NULL,
Check (Cnum > Snum),
Check (Onum > Cnum)
);

show tables;



