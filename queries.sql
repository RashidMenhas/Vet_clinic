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
select * from animals;
update animals set species= 'unspecified';
select * from animals;
rollback;
select * from animals;

 begin;
 update animals set species= 'digimon' where name like '%mon';
 update animals set species='pokemon' where species= '';
 select * from animals;
 commit;
 select * from animals;

 begin;
 select * from animals;
 delete from animals;
 select * from animals;
 rollback;
 select * from animals;

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
select AVG(escape_attempts) from animals where date_of_birth between '1990-01-01' and '2000-12-31' group by species;

-- add these query for joining table with each other
select name from animals join owners on animals.owners_id = owners.id where owners.full_name = 'Melody Pond';
select * from animals join species on animals.species_id = species.id where species.name = 'Pokemon';
select owners.full_name, animals.name from owners LEFT join animals on owners.id = animals.owner_id ORDER By owners.id;
select species_id, COUNT(*) AS animals from animals GROUP By species_id;
select * from species join owners on owners.full_name = 'Jennifer Orwell' where species.name = 'Digimon';
select * from animals join owners on owners.full_name = 'Dean Winchester' where animals.escape_attempts=0;
select owners.full_name, Ceil(COUNT(animals.id)) as number_of_animals  from owners LEFT join animals on owners.id = animals.owner_id GROUP BY owners.id ORDER BY number_of_animals DESC LIMIT 1;