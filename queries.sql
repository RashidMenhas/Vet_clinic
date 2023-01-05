/*Queries that provide answers to the questions from all projects.*/

 select * from animals where name like '%mon';
 select name from animals where date_of_birth between '01-01-2016' and '01-01-2019';
 select name from animals where neutered = true and escape_attempts <3;
 select date_of_birth from animals where name ='Agumon' or name ='Pikachu';
 select name , escape_attempts from animals where weight_kg > 10.5;
 select * from animals where neutered = true;
 select * from animals where name !='Gabumon';
 select * from animals where weight_kg >=10.4 and weight_kg <=17.3;

begin;
update animals set species= 'unspecified';
rollback;

 begin;
 update animals set species= 'digimon' where name like '%mon';
 update animals set species='pokemon' where species is null;
 commit;

 begin;
 delete from animals;
 rollback;

  begin;
  delete from animals where date_of_birth > '01-01-2022';
  savepoint first_savepoint;
  update animals set weight_kg = weight_kg * (-1);
  rollback to first_savepoint;
  update animals set weight_kg = weight_kg * (-1) where weight_kg <0;
  commit;

  select count(name) from animals;
  select  count(name) from animals where escape_attempts = 0;
  select AVG(weight_kg) from animals;
  select MAX(escape_attempts) from animals where neutered = true or neutered = false;
  select max(weight_kg), min(weight_kg) from animals group by species;
  select AVG(escape_attempts) from animals where date_of_birth between '01-01-1990' and '01-01-2000' group by species;