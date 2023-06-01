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






