CREATE DATABASE IF NOT EXISTS MascotasBD;
use MascotasBD;
Create table MascotasBD.Duenio
(
 idDuenio INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(50) NOT NULL,
 email VARCHAR(255) not null,
 telefono INT not null
);
create table MascotasBD.Mascotas
(
idMascota int AUTO_INCREMENT PRIMARY KEY,
especie varchar(30) not null,
raza varchar(30),
nombre varchar(30) not null,
fechaNacimiento DATE not null,
idDuenio int,
CONSTRAINT fk_mascota_duenio FOREIGN KEY (idDuenio) REFERENCES Duenio(idDuenio)
);

insert into Duenio (nombre, email,telefono)
VALUES ("Carlos","carlos@gmail.com",1127927787),
 ("Diego","diego@gmail.com",1133713332),
 ("Miguel","miguel@gmail.com",1134963231);
insert into Mascotas (especie,raza,nombre,fechaNacimiento,idDuenio)
values ("Canino", "Rottweiler","Roco","2006-11-11",1),
	   ("Canino", "Basset hound","Princesa","2012-04-22",2),
	   ("Felino",NULL,"Roco","2000-06-29",3);
