/* Populate database with sample data. */

insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Agumaon','02-03-2020',0,true,10.23); 
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Gabumon', '11-15-2018',2,true,8);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values('Pikachu','01-07-2021',1,false,15.04);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values('Devimon','05-12-2017',5,true,11);


insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('charmander', '02-08-2020', 0, false, -11);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Plantmon', '11-15-2021', 2 , true, -5.7);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Squirtle', '04-02-1993', 3, false, -12.13);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Angemon', '06-12-2005', 1, true, -45);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Boarmon', '06-07-2005', 7, true, 20.4);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Blossom', '10-13-1998', 3, true, 17);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg)  values('Ditto', '05-14-2022', 4, true, 22);

insert into owners (full_name, age) values ('Sam Smith', 34);
insert into owners (full_name, age) values ('Jennifer Orwell', 19);
insert into owners (full_name, age) values ('Bob', 45);
insert into owners (full_name, age) values ('Melody Pond', 77);
insert into owners (full_name, age) values ('Dean Winchester', 14);
insert into owners (full_name, age) values ('Jodie Whittaker', 38);

insert into species(name) values('Pokemon');
insert into species(name) values('Digimon');

update animals set species_id = 2 where name like '%mon';
update animals set species_id = 1 where species_id is null;

update animals set owner_id = 1 where name = 'Agumon';
update animals set owner_id = 2 where name = 'Gabumon' or name = 'Pikachu';
update animals set owner_id = 3 where name = 'Devimon' or name = 'Plantmon';
update animals set owner_id = 4 where name = 'Charmander' or name = 'Blossom' or name = 'Squirtle';
update animals set owner_id = 5 where name = 'Angemon' or name = 'Boarmon';

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, '04-23-2000');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '01-17-2019');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '05-04-1981');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, '06-08-2008');

INSERT INTO specializations (vet_id, species_id) VALUES (1, 1);
INSERT INTO specializations (vet_id, species_id) VALUES (3, 2);
INSERT INTO specializations (vet_id, species_id) VALUES (3, 1);
INSERT INTO specializations (vet_id, species_id) VALUES (4, 2);


 insert into visits(animal_id, vet_id, date_of_visit) values (8, 1, '05-24-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (8, 3, '07-22-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (2, 4, '02-02-2021');
 insert into visits(animal_id, vet_id, date_of_visit) values (3, 2, '01-05-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (3, 2, '03-08-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (3, 2, '03-14-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (4, 3, '05-04-2021');
 insert into visits(animal_id, vet_id, date_of_visit) values (5, 4, '02-24-2021');
 insert into visits(animal_id, vet_id, date_of_visit) values (6, 2, '12-14-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (6, 1, '08-10-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (6, 2, '04-07-2021');
 insert into visits(animal_id, vet_id, date_of_visit) values (7, 3, '09-29-2019');
 insert into visits(animal_id, vet_id, date_of_visit) values (8, 4, '10-03-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (9, 2, '01-24-2019');
 insert into visits(animal_id, vet_id, date_of_visit) values (9, 2, '05-15-2019');
 insert into visits(animal_id, vet_id, date_of_visit) values (9, 2, '02-27-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (9, 2, '08-03-2020');
 insert into visits(animal_id, vet_id, date_of_visit) values (9, 1, '01-11-2021');
