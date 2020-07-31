show databases;
use student_db;

-----------------------------------------------------
/* Q1. Write a program that computes the perimeter and the area of a rectangle. Define your own values for the length 
and width. (Assuming that L and W are the length and width of the rectangle, Perimeter = 2*(L+W) and Area = L*W). */

create table rectangle
(
  Area float(5,2),
  Perimeter float(5,2)
);

show tables;

delimiter ?
create procedure x1()
begin
declare length float(5,2) default 10;
declare width float(5,2) default 10;
declare Area float(5,2);
declare Perimeter float(5,2);
set Perimeter=2*(length+width);
set Area=length*width;
      insert into rectangle values (Area,Perimeter);
end;?
delimiter ;

call x1();

select * from rectangle;

---------------------------------------------------------------------------------------------------------------------

/* Q2.Write a program that declares an integer variable called num, assigns a value to it, and computes and inserts into 
the tempp table the value of the variable itself, its square, and its cube. */

create table tempp_1
(
  num int(10),
  sq int(10),
  cu int(10)
);

show tables;

delimiter @
create procedure Q2()
begin
declare num int(10) default 5;
declare sq int(10);
declare cu int(10);
set sq=num*num;
set cu=num*num*num;
insert into tempp_1 values(num,sq,cu);
end;@
delimiter ;

call Q2();
select * from tempp_1;

---------------------------------------------------------------------------------------------------------------------

/* Q3. Convert a temperature in Fahrenheit (F) to its equivalent in Celsius (C) and vice versa. The required 
formulae are:- C= (F-32)*5/9
F= 9/5*C + 32 */

create table Q3
(
  cel float (5,2),
  far float (5,2)
);

show tables;

delimiter $
create procedure Q3()
begin
declare cel float (5,2) default 10;
declare far float (5,2) default 10;
declare temp float (5,2) default 10;
set cel=(far-32)*5/9;
set far=(9/5)*temp + 32;

     insert into Q3
     values (cel,far);
     
end;$
delimiter ;

call Q3 ();
select * from Q3;

---------------------------------------------------------------------------------------------------------------------

/* Q4. Convert a number of inches into yards, feet, and inches. For example, 124 inches equals 3 yards, 1 foot, 
and 4 inches. */

create table Q4
(
  input int(4),
  yards int(4),
  feet int(4),
  inches int(4)
);

show tables;

delimiter //
create procedure Q4 (inch int)
begin
declare yard int(4);
declare feet int(4);
declare inches int(4);
set yard = inch/36;
set feet = (inch % 36) / 12;
set inches = inch -((feet*12)+(yard*36));

insert into Q4
values (inch,yard,feet,inches);

end;//
delimiter ;

call Q4 (124);
select * from Q4;

---------------------------------------------------------------------------------------------------------------------

/* Q5. Write a program that enables a user to input an integer. The program should then state whether the integer 
is evenly divisible by 5. */

create table Q5 
(
  a int (4),
  b char (10)
);

show tables;

delimiter ?
create procedure Q5()
begin
declare a int (4) default 10;
declare b char (10) ;

if (a % 5 = 0) 
   then 
   insert into Q5
   values (a,'yes');
else
   insert into Q5
   values (b,'no');
end if;

end;?
delimiter ;

call Q5();
select * from Q5;

---------------------------------------------------------------------------------------------------------------------

/* Q6. Your block should read in two real numbers and tell whether the product of the two numbers is equal to or 
greater than 100. */

create table Q6
(
  c char(10),
  d char(10)
);

show tables;

delimiter %
create procedure Q6(p int,q int)
begin
declare c char (10);
declare d char (10);

if (p*q <= 100)
   then
   insert into Q6
   values (p*q,'smaller');
else
   insert into Q6
   values (p*q,'greater');
end if;

end;%
delimiter ;
 
call Q6(10,10);
select * from Q6;

---------------------------------------------------------------------------------------------------------------------


     