create extension postgis;
-- For the table country, i used an existing geometry and updated it in order to create my table.
alter table country drop column ogc_fid, drop column country, drop column version;
alter table country add column name varchar(50);
alter table country add column population integer;
update country set name = 'Romania';
update country set population = 18871356;
 
 --County table
 
 create table county(
 id serial primary key not null,
 population integer not null,
 region varchar(50) not null,
 country_id integer,
 geom geometry(polygon, 4326),
 constraint fk_country foreign key (country_id) references country(id)
 );
 alter table county add column name varchar(2);
 --City table
 
 create table city(
 id serial primary key not null,
 name varchar(50) not null,
 population integer not null,
 country_id integer,
 county_id integer,
 geom geometry(polygon, 4326),
 constraint fk_country foreign key (country_id) references country(id),
 constraint fk_county foreign key (county_id) references county(id)
 );
 
 --Stadium table
 
 create table stadium(
 id serial primary key not null,
 name varchar(50) not null,
 capacity integer not null,
 year_opened date not null,
 city_id integer,
 geom geometry(point, 4326),
 constraint fk_city foreign key (city_id) references city(id)
 );
alter table stadium alter column year_opened drop not null;
 
 --Club table
 
 create table club(
 id serial primary key not null,
 name varchar(50) not null,
 founded_year date not null,
 members integer not null,
 stadium_id integer,
 city_id integer,
 constraint fk_stadium foreign key (stadium_id) references stadium(id),
 constraint fk_city foreign key (city_id) references city(id)
 );
 
 --Player table
 
 create table player(
 id serial primary key not null,
 name varchar(50) not null,
 position varchar(3) not null,
 birth_date date not null,
 number integer not null,
 club_id integer,
 constraint fk_club foreign key (club_id) references club(id)
 );
 
 --Coach table
 
 create table coach(
 id serial primary key not null,
 name varchar(50) not null,
 nationality varchar(50) not null,
 date_birth date not null,
 club_id integer,
 constraint fk_club foreign key (club_id) references club(id)
 );