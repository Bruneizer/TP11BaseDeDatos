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
 ("Miguel","miguel@gmail.com",1134963231),
 ("Rene","rene@gmail.com",1180238685);
insert into Mascotas (especie,raza,nombre,fechaNacimiento,idDuenio)
values ("Canino", "Rottweiler","Roco","2006-11-11",1),
	   ("Canino", "Basset hound","Princesa","2012-04-22",2),
	   ("Felino",NULL,"Antoni","2000-06-29",3),
       ("Felino",null, "Lucas", "2010-09-14",4);

	   

-- -- -- select para ver todas los datos de los dueños/duenios
-- select * from Duenio



-- -- -- select para ver solo el nombre de los duenios/dueños y el nombre de las mascotas que solo pertenescan a la especide de caninos
-- select d.nombre as "Nombre Duenio", m.nombre as "nombre de las mascotas"
-- from Mascotas m
-- join Duenio d on m.idDuenio = d.idDuenio
-- where especie = "Canino"





-- -- -- select para ver las mascotas que nacieron primero 
-- select * 
-- from Mascotas
-- order by fechaNacimiento asc