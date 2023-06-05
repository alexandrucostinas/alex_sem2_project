--Inserts into non spatial tables

--Insert into club table

insert into club (id, name, founded_year, members, stadium_id, city_id)
values 
(1,'Football Club Farul Constanta','1920-01-01',25,1,1),
(2,'Football Club Steaua Bucuresti','1947-06-07',28,2,2),
(3,'Cfr Cluj','1907-11-10',32,3,3),
(4,'Universitatea Craiova','2013-01-01',29,4,4),
(5,'Rapid Bucuresti','1923-03-19',35,5,2),
(6,'Sepsi Sf. Gheorghe','2011-06-01',24,6,5),
(7,'Fcu Craiova','1948-08-03',28,4,4),
(8,'Petrolul Ploiesti','1924-12-31',27,7,6),
(9,'Football Club Voluntari','2010-07-26',29,8,7),
(10,'Universitatea Cluj','1919-11-23',24,9,3),
(11,'Football Club Botosani','2001-01-01',26,10,8),
(12,'Hermannstadt','2015-07-29',27,11,9),
(13,'Uta Arad','1945-04-18',29,12,10),
(14,'Football Club Arges','1953-08-06',23,13,11),
(15,'Chindia Targoviste','1950-08-11',25,14,12)

--Insert into player table

insert into player (id, name, position, birth_date, number, club_id)
values
(1,'Carlo Casap','CM', '1998-05-12', 8, 1),
(2,'Florin Coman','LW','1998-04-10',7,2),
(3,'Ciprian Deac','RW','1986-02-16',10,3),
(4,'Andrei Ivan','ST','1997-01-04',19,4)

--Insert into coach table

insert into coach (id,name,nationality,date_birth,club_id)
values
(1,'Gheorghe Hagi','Romanian','1965-02-05',1),
(2,'George Becali','Romanian','1958-06-25',2)