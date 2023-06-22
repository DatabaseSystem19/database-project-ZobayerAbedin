--drop table

drop table Disease;
drop table Country_Food;
drop table Food_Nutrition;
drop table Food;
drop table Nutrition;
drop table Country;


--Checking the existing table in database
select table_name from user_tables;

--Displaying table data using SELECT command
select * from Country_Food where Country_id = 1;

--Deleting table row
insert into Country values(90, 'abc');
delete from Country where Country_id = 90;

--union, intersect, and except
select country_name from country where country_name like 'B%'
union select country_name from country where country_name like '%a%';

select country_name from country where country_name like 'B%'
except select country_name from country where country_name like '%a%';


--Aggregate function
select count(distinct Country_id) 
from Country_Food;


--Group by and Having
select Country_id, avg(production) 
from Country_Food group by Country_id 
having avg(production) > 10;

--String operations
select country_name 
from country where Country_name like 'B%'
or Country_name like '%a%';

--Join operations
select * from Country join Country_Food 
on Country.Country_id = Country_Food.Country_id;


--PL/SQL variable declaration and print value
set serveroutput on
declare
food_id Food.food_id%type;
food_name Food.food_name%type;
begin
select food_id, food_name into food_id, food_name 
from food where food_id = 52;
dbms_output.put_line(food_id || ' ' || food_name);
end;
/

--Insert and set default value
set serveroutput on
declare
disease_name Disease.disease_name%type := 'new';
nutrition_lacking DISEASE.NUTRITION_LACKING%type := 'lack';
affected_organ_or_major_damage DISEASE.AFFECTED_ORGAN_OR_MAJOR_DAMAGE%type := 'None';
begin
insert into disease values(disease_name, nutrition_lacking, affected_organ_or_major_damage);
end;
/

--Row type
set serveroutput on
declare
CF_row country_food%rowtype;
begin
select country_id, food_id, production
into CF_row.country_id, CF_row.food_id, CF_row.production
from country_food where country_id = 1 and food_id = 50;
dbms_output.put_line(CF_row.country_id || ' ' || CF_row.production);
end;
/

--Cursor and row count
set serveroutput on
declare
cursor food_nutrition_cursor is select * from food_nutrition;
FN_row food_nutrition%rowtype;
begin 
open food_nutrition_cursor;
fetch food_nutrition_cursor into FN_row;
while food_nutrition_cursor%found loop
    dbms_output.put_line(FN_row.food_id || ' ' || FN_row.nutrition_name);
    fetch food_nutrition_cursor into FN_row;
end loop;
dbms_output.put_line(food_nutrition_cursor%rowcount);
end;
/

--FOR LOOP/WHILE LOOP/ARRAY with extend() function
set serveroutput on
declare
    it number;
    type arr1 is varray(100) of country.country_name%type;
    arr arr1 := arr1();  
begin
     it := 1;
     for x in 1..5
     loop
        arr.extend();
         select country_name into arr(it) from country where country_id = x;
         it := it + 1;
    end loop;
    for x in 1..5
    loop
        dbms_output.put_line(arr(x));
    end loop;
end;
/

--trigger
set serveroutput on
create or replace trigger trig1
after update on nutrition
for each row
begin
update disease set nutrition_lacking = :new.nutrition_name 
where nutrition_lacking = :old.nutrition_name;
end;
/

create or replace trigger trig5
after insert on country_food
for each row
begin
insert into country values(:new.country_id, 'Countri');
insert into food values(:new.food_id, 'foodi');

end;
/

set serveroutput on
create or replace trigger trig1
after update on nutrition
for each row
begin
update disease set nutrition_lacking =:new.nutrition_name 
where nutrition_lacking =:old.nutrition_name;
update food_nutrition set nutrition_name =: new.nutrition_name
where nutrition_name =: old.nutrition_name;
end;
/


     
    










