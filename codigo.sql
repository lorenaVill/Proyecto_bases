create database el_romasal;

use el_romasal;

create table razas(

id_raza int not null,
nombre varchar(45),
destinacion varchar(45),

primary key(id_raza)
);

create table animales(

id_animal int not null,
nombre varchar(45),
genero varchar(45),
numero_partos varchar(45),
edad int,
ubicacion int not null,
descripcion_genetica varchar(45),
raza int not null,
responsable int not null,

primary key (id_animal),

constraint animal_ubicacion_fk1 foreign key (ubicacion) references ubicacion(id_ubicacion),
constraint animal_razas_fk2 foreign key (raza) references razas(id_raza),
constraint animal_responsables_fk3 foreign key (responsable) references responsables(id_responsable)

);

create table ubicacion(

id_ubicacion int not null,
nombre varchar(45),
capacidad int,

primary key (id_ubicacion)

);

create table responsables(

id_responsable int not null,
nombre varchar (45),
cedula int,
telefono varchar(45),
direccion varchar(45),
correo varchar(45),

primary key (id_responsable)

);

create table salud(

id_salud int not null,
fecha date,
animal int not null,
responsable int not null,
descripcion_enfermedad varchar(45),
descripcion_tratamiento varchar(45),
gastos double,

primary key (id_salud),

constraint salud_animal_fk1 foreign key (animal) references animales(id_animal)
);

create table producciones(

id_produccion int not null,
fecha date,
animal int not null,
cantidad float not null,

primary key (id_produccion),

constraint produccion_animal_fk1 foreign key (animal) references animales(id_animal)

);

create table ventas_carne(

id_venta_carne int not null,
fecha date,
animal int not null,
cantidad int,
precio double,
cliente int not null,

primary key(id_venta_carne),

constraint venta_carne_animal_fk1 foreign key (animal) references animales(id_animal),
constraint venta_carne_cliente_carne_fk2 foreign key (cliente) references cliente_carne(id_cliente_carne)
);

create table compras(

id_compras int not null,
nombre varchar(45),
fecha date,
responsable int not null,

primary key(id_compras),

constraint compras_responsable_fk1 foreign key (responsable) references responsables(id_responsable)
);

create table ventas_leche(

id_venta_leche int not null,
fecha date,
cantidad float,
precio double,
responsable int not null,

primary key(id_venta_leche),

constraint venta_leche_responsable_fk1 foreign key (responsable) references responsables(id_responsable)
);

create table insumos(

id_insumo int not null,
fecha date,
precio double,
descripcion varchar(45),

primary key (id_insumo)

);

create table cliente_carne(

id_cliente_carne int not null,
nombre varchar(45),
cedula int not null,
telefono varchar(45),
direccion varchar(45),
cantidad int,
precio double,
correo varchar(45),

primary key (id_cliente_carne)
);

create table compras_insumos(

compra int not null,
insumo int not null,
cantidad int,

primary key (compra,insumo),

constraint compras_insumos_fk1 foreign key (compra) references compras(id_compras),
constraint compras_insumos_fk2 foreign key (insumo) references insumos(id_insumo)

);

