
select *from cliente_carne where nombre="pedro luis baez";
select telefono from cliente_carne;

#select distinct
#selecciona la columna que deseamos de una tabla y solo nos muestra esa columna
#SELECT DISTINCT column1, column2, ...
#FROM table_name;

select responsable from salud;    #SELECT columna (nombre columna) FROM table (nombre tabla)
select capacidad from ubicacion;  
select direccion from cliente_carne;
select cedula from responsables;
select precio from insumos;

#selecciona una columna que deseo y me muestra los valores exepto los repetidos
#SELECT DISTINCT Country FROM Customers;

select distinct cantidad from producciones;  #SELECT DISTINCT columna(nombre columna) FROM table (nombre tabla)
select distinct nombre from razas;           
select distinct responsable from salud;
select distinct telefono from cliente_carne;
select distinct fecha from insumos;

select count(distinct telefono) from responsables;
select count(distinct responsable) from compras;
select count(distinct destinacion) from razas;  
select count(distinct precio) from insumos;
select count(distinct correo) from cliente_carne;


# me hace el conteo y el as es un sobrenombre de la tabla para cuando me de la cantidad contenga el sobrenombre
# SELECT count(*) AS sobrenombre FROM tabla;
select count(*) as cantidad from  responsables;  


#where
select* from cliente_carne where precio > 1000000;
select* from cliente_carne where precio < 2500000;
select* from responsables where nombre = 'Baudilio Villabona Joya';
select* from responsables where id_responsable >=10;
select* from animales where numero_partos >=1;

#and, or, not

select* from cliente_carne where telefono = 3125694875 and cedula=19456826;
select* from responsables where id_responsable=1 and cedula=13924142;
select* from razas where id_raza=10 and nombre="Guzerat";
select* from producciones where animal = 7 and cantidad=9;
select* from salud where responsable=1 and animal=10;

select* from salud where responsable=1 or responsable =2;
select* from producciones where animal=1 or cantidad=9;
select* from ventas_carne where fecha=2022-10-12 or animal=23;
select* from ventas_carne where cliente=1 or cliente=10 ;
select* from ventas_leche where responsable=19 or responsable =2;

select* from salud where not responsable >=  10;
select* from animales where not responsable <=  10;
select* from ubicacion where not capacidad >=  5;
select* from cliente_carne where not precio >=  2000000;
select* from ventas_leche where not responsable =  10;

select * from animales where responsable>5 and (edad=2 or genero="M");

select * from animales where not genero = "M" and not edad =2;

#order by
select * from salud order by responsable;
select * from animales order by responsable;
select * from ventas_carne order by cliente;
select * from ubicacion order by capacidad;
select * from ventas_leche order by cantidad;

select * from animales order by responsable desc;
select * from animales order by responsable asc;
select * from ventas_carne order by cliente asc;
select * from salud order by responsable desc;

select * from animales order by responsable, edad;
select * from salud order by responsable, animal;
select * from ventas_leche order by responsable,cantidad;

select * from animales order by responsable desc, edad asc;
select * from salud order by animal desc, responsable asc;
select * from ventas_carne order by cliente desc,fecha asc;

#insert into

insert into animales (id_animal,nombre,genero,numero_partos,edad,ubicacion,descripcion_genetica,raza,responsable)
values("40","pique","M","0","4","10","gyr","9","10");

insert into ubicacion(id_ubicacion,nombre,capacidad)
values("27","tierra dura","10"),
("22","florida","8"),
("23","holus","4"),
("24","marea","7"),
("25","marea baja","8"),
("26","marea alta","2");

#null values    

insert  into responsables values(22,"Yaneth",21212121,null,"carr","fafaf");
insert  into responsables values(24,"lluis jose perez",21212121,null,null,null);
insert  into responsables values(25,"gorge bohorques",21212121,null,"cr 45 #20","gorgebor@gmail.com");
insert  into responsables values(26,"luisa maria",21212121,null,"vereda pozo verde",null);
insert into responsables(id_responsable,nombre,cedula) values(23,"pedro jose",223265656);

# IS NULL me muestra los valores donde es null
#SELECT *FROM table WHERE columna is null
# IS NOT NULL me muestra los valores donde no hay valores null
#SELECT *FROM table WHERE columna is not null;

SELECT *FROM responsables WHERE telefono is null;
SELECT *FROM responsables WHERE telefono is not null;

#update
#UPDATE nos sirve para modificar los datos ya registrados en una tabla es decir que sirve para actualizar 
#los datos de una tabla
#UPDATE table_name 
#SET column1 = value1, column2 = value2, 
#WHERE condition;

update responsables set nombre ="maria fernanda cabal" where id_responsable=10;
select *from responsables where id_responsable=10;
update ubicacion set nombre ="piedras altas" where id_ubicacion=24;
select * from ubicacion where id_ubicacion=24;
update responsables set nombre ="jose luis alvarez" where id_responsable=6;
select * from responsables where id_responsable=6;

#delete
#DELETE esto nos sirve para eliminar el dato de una tabla ya existente
#DELETE FROM tabla WHEREcolumna =valor;

delete from ubicacion where id_ubicacion =27;
select *from ubicacion where id_ubicacion=27;
delete from ubicacion where id_ubicacion =23;
select *from ubicacion where id_ubicacion=23;
delete from ubicacion where id_ubicacion =24;
select *from ubicacion where id_ubicacion=24;



#Joins 
SELECT cliente_carne.nombre, cliente_carne.direccion , ventas_carne.precio FROM cliente_carne INNER JOIN ventas_carne
ON cliente_carne.id_cliente_carne = ventas_carne.id_venta_carne


delimiter $$

create procedure animales_leche()
begin
select * from producciones;
end
$$

call animales_leche()


delimiter --
create procedure cuidador_animal (in cuidador varchar(45))
begin
select * from responsables where id_responsable=cuidador;
end
--
call cuidador_animal(1);



#Quiero el promedio de la leche 
delimeter $$
create procedure promedio_leche (in promedio int)
begin
select avg (cantidad)
from ventas_leche
where id_venta_leche = promedio ;
end
$$

call promedio_leche(1);

DELIMITER //

create function cantidad_leche( ani varchar(45))
	returns int unsigned
begin 
	declare cant int unsigned;
    set cant = (select avg (cantidad)
	from ventas_leche
	where id_venta_leche = ani);
    return cant;
end
//
select cantidad_leche(1);

SET GLOBAL log_bin_trust_function_creators = 1;



DELIMITER $$
create trigger eliminar_animal
before delete on animal
for each row
begin
	delete from animales where raza=old.id_raza;
    
END$$

DELIMITER ;

drop trigger eliminar_raza;
delete from razas where id_raza=9;
