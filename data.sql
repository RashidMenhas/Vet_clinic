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
