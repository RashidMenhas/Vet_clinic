/* Database schema to keep the structure of entire database. */
create database vet_clinic;
 CREATE TABLE animals(
 id int GENERATED ALWAYS AS IDENTITY,
 name varchar(50),
 date_of_birth date,
 escape_attempts int,
 neutered boolean,
 weight_kg decimal,
 primary key (id)
 );
