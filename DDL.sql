drop table Disease;
drop table Country_Food;
drop table Food_Nutrition;
drop table Food;
drop table Nutrition;
drop table Country;


CREATE TABLE Country(
	country_id integer PRIMARY KEY,
	country_name varchar(20)
);

CREATE TABLE Food(
	food_id integer PRIMARY KEY,
	food_name varchar(20)
);

CREATE TABLE Country_Food(
	country_id integer,
	food_id integer,
	production number(6, 2),
	PRIMARY KEY (Country_id, food_id),
	FOREIGN KEY (food_id) REFERENCES Food,
	FOREIGN KEY (country_id) REFERENCES Country
);

CREATE TABLE Nutrition(
	nutrition_name varchar(20) PRIMARY KEY
);

CREATE TABLE Food_Nutrition(
	food_id integer,
	nutrition_name varchar(20),
	PRIMARY KEY (food_id, nutrition_name),
	FOREIGN KEY (food_id) REFERENCES Food,
	FOREIGN KEY (nutrition_name) REFERENCES Nutrition
);

CREATE TABLE Disease(
	disease_name varchar(30) PRIMARY KEY,
	nutrition_lacking varchar(20),
	affected_organ_or_major_damage varchar(20),
	FOREIGN KEY (nutrition_lacking) REFERENCES Nutrition
);





