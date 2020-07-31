show databases;
use student_db;

------------------------------------------------------------------------------------------------------------------------

/* Q1.Select from any table a number and determine whether it is within a given range (for example, between 1 and 10).*/

create table AQ2
(
  num int (4),
  ans char (10)
);

show tables;

delimiter ?
create procedure AQ2()
begin
     declare num int (4) default 5;
     declare lv int (4) default 1;
     declare uv int (4) default 10;
     
     if (num > lv and num < uv)
     then
         insert into AQ2
         values (num,'yes');
	else
         insert into AQ2
         values (num,'no');
    end if;
end; ?
delimiter ;

call AQ2();
select * from AQ2;

---------------------------------------------------------------------------------------------------------------------

/* Q2. Select from any table three positive integers representing the sides of a triangle, and determine whether they 
form a valid triangle. Hint: In a triangle, the sum of any two sides must always be greater than the third side. */

create table AQ1
(
  a int (4),
  b int (4),
  c int (4),
  ans char (10)
);

show tables;

delimiter %
create procedure AQ1()
begin
     declare a int (4) default 5;
     declare b int (4) default 6;
     declare c int (4) default 10;
     
     if (a+b > c or b+c > a or c+a > b) 
     then
         insert into AQ1
         values (a,b,c,'yes');
	 else
         insert into AQ1
         values (a,b,c,'no');
	 end if;
end;%
delimiter ;

call AQ1();
select * from AQ1;

---------------------------------------------------------------------------------------------------------------------

/* Q3. Check if a given a year is a leap year. The condition is:- year should be (divisible by 4 and not divisible 
by 100) or (divisible by 4 and divisible by 400.). The year should be Selected from some table. */

create table AQ3 
( 
 y int (4),
 ans char (10)
);

show tables;

delimiter &
create procedure AQ3()
begin
     declare y int(4) default 2020;
     declare c1 int(4);
     declare c2 int(4);
     declare c3 int(4);
     set c1=mod(y,100);
     set c2=mod(y,400);
     set c3=mod(y,4);
     
     if (c3=0 and not c2=0 or c3=0 and c2=0) 
     then
         insert into AQ3
         values (y,'leap');
	 else
         insert into AQ3
         values (y,'not leap');
	end if;
    
end;&
delimiter ;

call AQ3();
select * from AQ3;

---------------------------------------------------------------------------------------------------------------------

/* Q4. Write a program that Selects from any table two character strings. Your program should then determine if one 
character string exists inside another character string. */

create table AQ4
(
 p1 char(10),
 p2 char(20),
 ans char(10)
);

show tables;

delimiter ?
create procedure AQ4()
begin
     declare p1 char(10) default 'abc';
     declare p2 char(20) default 'xvyabcstu';
     declare a int(4);
     set a=locate ('abc','xyzabcstu');
     
     if (a != 0) 
     then
         insert into AQ4
         values (p1,p2,'present');
	 else
         insert into AQ4
         values (p1,p2,'absent');
	 end if;
     
end;?
delimiter ;

call AQ4();
select * from AQ4;

---------------------------------------------------------------------------------------------------------------------
     
