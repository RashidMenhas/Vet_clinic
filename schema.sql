/* Database schema to keep the structure of entire database. */
create database vet_clinic;
 CREATE TABLE animals(
 id int GENERATED ALWAYS AS IDENTITY,
 name varchar(50),
 date_of_birth date,
 escape_attempts int,
 neutered boolean,
 weight_kg decimal,
 species varchar(44),
 primary key (id)
 );

ALTER TABLE animals ADD column species varchar(44);

-- create two table species and owners
 create table owners(
    id int primary key GENERATED ALWAYS AS IDENTITY,
 full_name varchar(44),
 age int
 );

 create table species(
id int primary key GENERATED ALWAYS AS IDENTITY,
 name varchar(44)
 );

alter table animals drop column species;
ALTER TABLE animals ADD column species_id int;
alter table animalas add column owners_id int;
alter table animals add constraint species_id foreign key (species_id) references species(id);
alter table animals add constraint owners_id foreign key (owners_id) references owners(id);
