/*YSP Proyect
drop user 'ysp'@'localhost';
 
CREATE USER 'ysp'@'localhost' IDENTIFIED BY 'n0m3l0';
GRANT ALL PRIVILEGES ON * . * TO 'ysp'@'localhost';
*/

-- Statment al azar
select*from papeleria;
select*from usuario;
-- BD YPS
create database yps2;
use yps2;

create table usuario(
id_usu integer auto_increment not null primary key,
nombre varchar(70),
apellido varchar(70),
Correo varchar(70),
Contrasenia varchar(70)
);

create table papeleria(
id_papeleria integer auto_increment not null primary key,
NomPap varchar(80),
ubicacion varchar(80),
imagen varchar(80),
CorrPap varchar(80),
Contrasenia varchar(80)
);

create table material (
id_material integer auto_increment not null primary key,
material varchar (80)
);

create table categoria(
id_categoria integer auto_increment not null primary key,
categoria varchar(30)
);

create table producto(
id_producto integer auto_increment not null primary key,
id_papeleria integer not null,
id_material integer not null,
id_categoria integer not null,
Ubimagen varchar(100),
precio float(10),
foreign key (id_papeleria) references papeleria(id_papeleria) on update cascade on delete cascade,
foreign key (id_material) references material(id_material) on update cascade on delete cascade,
foreign key (id_categoria) references categoria(id_categoria) on update cascade on delete cascade
);

create table color(
id_color integer auto_increment not null primary key,
color varchar(20)
);

create table compra(
id_carrito integer auto_increment not null primary key,
cantidad integer(10),
id_producto integer not null,
id_color integer not null,
foreign key (id_producto) references producto(id_producto) on update cascade on delete cascade,
foreign key (id_color) references color(id_color) on update cascade on delete cascade
);