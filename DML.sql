insert into Country values(1, 'Bangladesh');
insert into Country values(2, 'Nepal');
insert into Country values(3, 'Bhutan');
insert into Country values(4, 'Pakistan');
insert into Country values(5, 'India');
insert into Country values(6, 'USA');
insert into Country values(7, 'UK');
insert into Country values(8, 'Russia');
insert into Country values(9, 'Ukraine');
insert into Country values(10, 'Australia');


insert into Food values(50, 'Wheat');
insert into Food values(51, 'Rice');
insert into Food values(52, 'Bananas');
insert into Food values(53, 'Apple');
insert into Food values(54, 'Oranges');
insert into Food values(55, 'Grape');
insert into Food values(56, 'Mango');
insert into Food values(57, 'Potatoes');
insert into Food values(58, 'Soybeans');
insert into Food values(59, 'Coffee');
insert into Food values(60, 'Tomatoes');
insert into Food values(61, 'Onions');
insert into Food values(62, 'Lentils');


insert into Nutrition values('Vitamin A');
insert into Nutrition values('Vitamin C');
insert into Nutrition values('Vitamin D');
insert into Nutrition values('Iron');
insert into Nutrition values('Iodine');
insert into Nutrition values('Calcuim');
insert into Nutrition values('Zinc');
insert into Nutrition values('Vitamin B12');
insert into Nutrition values('Vitamin K');

insert into Disease values('Night Blindness', 'Vitamin A', 'Eye');
insert into Disease values('Rickets', 'Vitamin D', 'Bone');
insert into Disease values('Osteomalacia', 'Vitamin D', 'Bone');
insert into Disease values('Scurvy', 'Vitamin C', 'Fatigue');
insert into Disease values('Anemia', 'Iron', 'Fatigue');
insert into Disease values('Goiter', 'Iodine', 'Thyroid gland');
insert into Disease values('Osteoporosis', 'Calcuim', 'Bone');
insert into Disease values('Hair loss', 'Zinc', 'Hair');
insert into Disease values('Pernicious anemia', 'Vitamin B12', 'Fatigue');
insert into Disease values('Impaired blood clotting', 'Vitamin K', 'Fatigue');

insert into Country_Food values(1, 50, 4);
insert into Country_Food values(1, 52, 3);
insert into Country_Food values(1, 56, 30);
insert into Country_Food values(2, 52, 20);
insert into Country_Food values(2, 51, 6);
insert into Country_Food values(3, 52, 20);
insert into Country_Food values(3, 57, 30);
insert into Country_Food values(4, 50, 10);
insert into Country_Food values(4, 52, 11);
insert into Country_Food values(5, 51, 10);
insert into Country_Food values(5, 59, 7);
insert into Country_Food values(6, 53, 10);
insert into Country_Food values(6, 58, 20);
insert into Country_Food values(6, 62, 10);
insert into Country_Food values(7, 60, 10);
insert into Country_Food values(7, 61, 20);
insert into Country_Food values(8, 50, 30);
insert into Country_Food values(8, 57, 20);
insert into Country_Food values(9, 50, 30);
insert into Country_Food values(9, 55, 20);
insert into Country_Food values(10, 62, 20);
insert into Country_Food values(10, 53, 25);

insert into Food_Nutrition values(50, 'Vitamin B12');
insert into Food_Nutrition values(51, 'Vitamin B12');
insert into Food_Nutrition values(52, 'Calcuim');
insert into Food_Nutrition values(53, 'Zinc');
insert into Food_Nutrition values(56, 'Vitamin C');
insert into Food_Nutrition values(55, 'Vitamin D');
insert into Food_Nutrition values(54, 'Vitamin C');
insert into Food_Nutrition values(57, 'Vitamin K');
insert into Food_Nutrition values(58, 'Vitamin A');
insert into Food_Nutrition values(60, 'Vitamin A');
insert into Food_Nutrition values(62, 'Vitamin D');

