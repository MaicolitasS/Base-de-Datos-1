create database tienda_mascotas;

use tienda_mascotas;

create table productos(
	id_producto int primary key auto_increment,
    nombre varchar(100),
    precio decimal(20.2),
    stock int,
    tipo_producto varchar(50),
    marca varchar(50)
);

create table clientes(
	id_cliente int primary key auto_increment,
    nombre varchar(50),
    apellido varchar(50),
    correo varchar (50) unique,
    telefono int,
    direccion varchar(100)
);

create table animales(
	id_animal int primary key auto_increment,
    id_cliente int,
	especie varchar(50),
    raza varchar(50),
    sexo varchar(5),
    edad varchar(50),
    estado_salud varchar(50),
    foreign key (id_cliente) references clientes(id_cliente)
);

create table ventas(
	id_venta int primary key auto_increment,
	id_cliente int,
	foreign key (id_cliente) references clientes(id_cliente) 
);
    
create table productos_animales(
	id_producto_animal int primary key auto_increment,
    id_producto int,
    id_animal int,
    foreign key (id_producto) references productos(id_producto),
    foreign key (id_animal) references animales(id_animal)
);

insert into productos (nombre, precio, stock, tipo_producto, marca) values ('Cepillo de peinar', 40000, 10, 'Accesorio', 'Garstor');
insert into productos (nombre, precio, stock, tipo_producto, marca) values ('Carne para perro', 19000, 15, 'Alimento', 'Pedigree');
insert into productos (nombre, precio, stock, tipo_producto, marca) values ('Bola de lana', 3000, 5, 'Juguete', 'Gudves');
insert into clientes (nombre, apellido, correo, telefono, direccion) values ('Miguel', 'Zurita', 'miguel@hotmail.com', 1234567, 'Navarra');
insert into clientes (nombre, apellido, correo, telefono, direccion) values ('Gustavo', 'Gutierrez', 'gustavo@hotmail.com', 126667, 'Lleras');
insert into clientes (nombre, apellido, correo, telefono, direccion) values ('Genith', 'Rendon', 'genith@hotmail.com', 12341313, 'Niquia');
insert into clientes (nombre, apellido, correo, telefono, direccion) values ('Laura', 'Serna', 'laura@hotmail.com', 1333047, 'La Estrella');
insert into animales (especie, raza, sexo, edad, estado_salud, id_cliente) values ('Perro', 'Golden Retriever', 'F', '5 años', 'Estable', 1);
insert into animales (especie, raza, sexo, edad, estado_salud, id_cliente) values ('Perro', 'Labrador Retriever', 'M', '6 meses', 'Crítico', 2);
insert into animales (especie, raza, sexo, edad, estado_salud, id_cliente) values ('Gato', 'Persa', 'F', '1 año', 'Estable', 3);
insert into animales (especie, raza, sexo, edad, estado_salud, id_cliente) values ('Gato', 'Bengalí', 'M', '7 años', 'Crítico', 4);
insert into productos_animales (id_producto, id_animal) values (1, 1); 
insert into productos_animales (id_producto, id_animal) values (2, 2); 
insert into productos_animales (id_producto, id_animal) values (3, 4); 
update productos set stock = 9 where id_producto = 1;
update productos set stock = 5 where id_producto = 2;
update animales set estado_salud = 'Estable' where id_animal = 2;
update animales set estado_salud = 'Crítico' where id_animal = 1;
update clientes set telefono = 11223344 where id_cliente = 1;
update clientes set telefono = 23458112 where id_cliente = 2;   	