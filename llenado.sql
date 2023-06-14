
#tabla de razas
insert into razas(id_raza,nombre,destinacion)

values("1","Belmont Red","Carne"),
("2","Romagnola","Carne"),
("3","Nelore","leche y carne "),
("4","Marchigiana","Carne"),
("5","Maine anjou","Carne"),
("6","Limousin","Carne"),
("7","Holstein","Leche"),
("8","Hereford","Carne"),
("9","Gyr","Leche y Carne"),
("10","Guzerat","Carne"),
("11","Gelbvieh","Leche"),
("12","Droughmaster","Carne"),
("13","Chianina","Leche"),
("14","Charolais","Leche"),
("15","Brangus","Carne"),
("16","Brahman","Carne"),
("17","Bradfor","Carne"),
("18","Belga Azul","Leche y carne"),
("19","Beefmaster","Leche"),
("20","Angus","leche y carne");

#tabla de animales
insert into animales(id_animal,nombre,genero,numero_partos,edad,ubicacion,descripcion_genetica,raza,responsable)

values("1","Loca","H","2","5","12","Angus con holstein","20","10"),
("2","Florencia","H","4","7","12","Archyre con Angus","20","8"),
("3","Tuneba","H","5","8","12","Beefmaster","19","2"),
("4","Basilia","H","3","6","12","Gelbvieh","11","13"),
("5","Gerar","M","","4","8","Angus","20","20"),
("6","Golondrina","H","6","9","3","Gyr","9","3"),
("7","Pirinola","H","3","6","2","Charolais","14","6"),
("8","Faraona","H","1","4","2","Chianina","13","11"),
("9","Maria","H","1","4","2","Charolais","14","13"),
("10","Jeronima","H","4","7","3","Chianina","13","19"),
("11","luciana","H","4","7","8","Gelbvieh","11","20"),
("12","Flor deliz","H","3","6","11","Brahman","16","5"),
("13","Jardinera","H","5","8","11","Gelbvieh","11","17"),
("14","Principe","M","","3","5","Brahman","16","8"),
("15","Gustaf","M","","2","5","Angus","20","13"),
("16","Rudolph","M","","2","5","Brangus","15","19"),
("17","Manzana","H","3","7","12","Angus","20","20"),
("18","Cardan","M","","3","5","Limousin","6","1"),
("19","Lauren","M","","1","9","Brangus","15","15"),
("20","Daemon","M","","1","9","Limousin","6","1"),
("21","Prince","M","","2","5","Brahman","16","8"),
("22","Gustavis","M","","3","5","Angus","20","13"),
("23","Ruddo","M","","2","5","Brangus","15","19"),
("24","piña","H","3","7","12","Angus","20","20"),
("25","Cardion","M","","3","16","Limousin","6","1"),
("26","Lourencio","M","","1","9","Brangus","15","15"),
("27","Daren","M","","1","16","Limousin","6","1"),
("28","Divo","M","","1","19","Limousin","6","1"),
("29","Proya","M","","3","11","Brahman","16","8"),
("30","gotro","M","","1","5","Angus","20","13"),
("31","rofos","M","","1","8","Brangus","15","19"),
("32","Miami","H","3","7","13","Angus","20","20"),
("33","Colir","M","","1","5","Limousin","6","1"),
("34","patre","M","","1","6","Brahman","16","8"),
("35","farre","M","","2","18","Angus","20","13"),
("36","lincon","M","","2","17","Brangus","15","19"),
("37","Manzana","H","3","7","13","Angus","20","20"),
("38","Cardan j","M","","1","5","Limousin","6","1"),
("39","Lauren m","M","","3","9","Brangus","15","15");

#tabla de responsables
insert into responsables(id_responsable,nombre,cedula,telefono,direccion,correo)

values("1","Baudilio Villabona Joya","13924142","3115267440","Vereda Pescaderito","baudiliovillabonajoya@gmail.com"),
("2","German yesid villabona roa","1096546123","3125705969","Vereda Pescaderito","germanvillaroyer63@gmail.com"),
("3","luis alfredo villabona","19856201","3205681247","Edificio San juan apt 201",""),
("4","Jose Miguel","25896456","","","jose22miguel@hotmail.com"),
("5","lorenzo roa perez","56458963","3104568956","","roaperez5656@gmail.com"),
("6","Jose luis leon","13546897","310598444","vereda pantano grande",""),
("7","luis miguel cano","1096215235","","vereda pantano hondo",""),
("8","angel romero ayala","1096254236","312458963","cra 11 # 17-84","romeroangle@gmail.com"),
("9","yesid castañeda lopez","23895264","3054268911","cra 8 #6-23","lopezyesid@gmail.com"),
("10","eugenia duran peña","15453248","3156248911","vereda el alizal","peñaeugenia11@gmail.com"),
("11","pedro pablo vera ortiz","26489147","","cra 7 #6-23",""),
("12","basilio villabona ","12789146","3114856752","cra 11 #17-94",""),
("13","ivan duarte roa","12456357","321445776","cra 8 #6-23",""),
("14","angel silva rojas","1096125378","321548693","vereda el alizal","angelrojas125@gmail,com"),
("15","fabian carabal torres","96458246","325649465","","carabalfabian246@gmail.com"),
("16","cristian sandoval","1091264358","315264711","calle 8 #6-23","cristianomarsandoval60@gmail.com"),
("17","dario rodriguez peña","1056125222","3100056648","alle 10 #6a-23","darioelkin00@hotmail.com"),
("18","fernando castellanos","12456787","3120056480","vereda pescaderito ","fernando787@yahoo.com"),
("19","tatiana alvarez cueva","1064235149","3135264897","edificio san luis apt 501","carvajalcuevas2@gmsil.com"),
("20","marcos hernandez","15469002","3256498512","cra 12 #6-23","");

#tabla de compras
insert into compras(id_compras,fecha,nombre,responsable)

values("1","2023-01-05","renta leche","2"),
("2","2023-01-10","harina de arroz","3"),
("3","2023-01-15","tamo negro","3"),
("4","2023-01-19","flunihyt","6"),
("5","2023-01-23","sultrihyt","12"),
("6","2023-01-30","diclocilina","5"),
("7","2023-02-05","emopar","4"),
("8","2023-02-06","purina en grano","19"),
("9","2023-02-13","harina de arroz","20"),
("10","2023-02-19","tamo negro","1"),
("11","2023-02-28","renta leche","6"),
("21","2023-03-05","calcio en polvo","7"),
("12","2023-03-11","electrosuero","8"),
("13","2023-03-16","combeplex","11"),
("14","2023-03-21","calmafos","13"),
("15","2023-03-23","cebador","15"),
("16","2023-03-16","traumel","16"),
("17","2023-04-05","dipirona","20"),
("18","2023-04-12","oxitocina","16"),
("19","2023-04-15","oxitetraciclina","20"),
("20","2023-04-18","dexamicin","10");


#tabla de compras_insumos

insert into compras_insumos(compra,insumo,cantidad)

values(1,2,4),
(2,1,5),
(4,5,2),
(6,9,1),
(7,12,1),
(8,11,2),
(6,13,3),
(12,11,5),
(10,2,5),
(11,1,2),
(19,9,3),
(20,18,1),
(18,19,1),
(17,20,1),
(13,3,6),
(12,9,2),
(11,14,2),
(5,16,1),
(7,17,2),
(12,5,2);

#tabla de insumos
insert into insumos(id_insumo,fecha,precio,descripcion)

values("1","2023-01-01","80000","alimento "),
("2","2023-01-22","90000","alimento"),
("3","2023-01-22","85000","alimento"),
("4","2023-01-22","78000","alimento"),
("5","2023-01-30","12000","medicamento"),
("6","2023-01-30","20000","medicamento"),
("7","2023-02-01","48000","vitamina"),
("8","2023-02-01","13000","medicamento"),
("9","2023-02-11","90000","alimento"),
("10","2023-02-12","80000","alimento"),
("11","2023-02-13","16000","medicamento"),
("12","2023-02-18","32000","vitamina"),
("13","2023-02-26","42000","calcio"),
("14","2023-02-28","39000","medicamento"),
("15","2023-03-10","50000","medicamento"),
("16","2023-03-15","22000","medicamento"),
("17","2023-03-21","110000","alimento"),
("18","2023-04-03","56000","calcio"),
("19","2023-04-12","12500","vitamina"),
("20","2023-04-16","18000","medicamento");

#tabla de ventas_leche
insert into ventas_leche(id_venta_leche,fecha,cantidad,precio,responsable)

values("1","2023-03-30","120","1250","1"),
("2","2023-03-31","121","1250","2"),
("3","2023-04-01","127","1400","4"),
("4","2023-04-02","123","1400","12"),
("5","2023-04-03","122","1400","12"),
("6","2023-04-04","123","1400","12"),
("7","2023-04-05","123","1400","19"),
("8","2023-04-06","124","1400","20"),
("9","2023-04-07","121","1550","3"),
("10","2023-04-08","129","1550","10"),
("11","2023-04-09","130","1550","11"),
("12","2023-04-10","128","1550","13"),
("13","2023-04-11","128","1550","14"),
("14","2023-04-12","120","1550","9"),
("15","2023-04-13","121","1800","8"),
("16","2023-04-14","126","1800","7"),
("17","2023-04-15","123","1800","15"),
("18","2023-04-16","129","1800","16"),
("19","2023-04-17","125","1800","18"),
("20","2023-04-18","128","1800","17");

#tabla de ventas_carne
insert into ventas_carne(id_venta_carne,fecha,animal,cantidad,precio,cliente)

values("1","2022-10-20","19","1","2000000","5"),
("2","2022-10-20","23","1","3500000","1"),
("3","2022-10-20","30","1","150000","2"),
("4","2022-12-15","32","1","170000","9"),
("5","2023-01-12","39","1","2300000","2"),
("6","2023-01-12","21","1","1560000","15"),
("7","2023-01-12","18","1","1300000","11"),
("8","2023-01-12","26","1","200000","13"),
("9","2023-02-18","31","1","2300000","3"),
("10","2023-02-18","34","1","3500000","19"),
("11","2023-02-26","33","1","4000000","20"),
("12","2023-02-26","37","1","4300000","18"),
("13","2023-02-26","36","1","3800000","17"),
("14","2023-02-26","20","1","3400000","15"),
("15","2023-02-26","22","1","3600000","4"),
("16","2023-03-10","23","1","2900000","5"),
("17","2023-03-11","24","1","3100000","6"),
("18","2023-03-11","25","1","2830000","8"),
("19","2023-04-06","26","1","1900000","7"),
("20","2023-04-10","27","1","1230000","14");

#tabla de clientes_carne
insert into cliente_carne(id_cliente_carne,nombre,cedula,telefono,direccion,cantidad,precio,correo)

values("1","pedro luis baez","19456826","3125694875","vereda el alizal","1","2000000","luisbaez@gmail.com"),
("2","jose jose perez","15263459","3569871426","vereda pantano grande","1","3500000","josejose@hotmail.com"),
("3","lissandro paipa ","30156478","3258495619","cra 12 #45-32","1","150000",""),
("4","raul medrano lopez","32568497","32595245","","1","170000",""),
("5","maria montoya","39325695","3201568498","","1","2300000","montoya22@gmaill.com"),
("6","gustabo albear melgar","21789211","3265489785","","1","1560000","alberartabo@gmail.com"),
("7","adolfo guerrero","18125666","1532689515","cra 75 #15-23","1","1300000","guerreroadolf22@yahoo.com"),
("8","victor bohorquez","26123321","3256142020","","1","200000","bohorquez13@gmail.com"),
("9","duvan lisarazo","31152621","315202064","","1","2300000","lisarazo2020@gmail.com"),
("10","carolina mendez parra","344396963","3120306987","vereda san miguel","1","3500000","parramendez@gmail.com"),
("11","jorge parra oviedo","33256849","3125220369","vereda pangua","1","4000000","parra@gmail.com"),
("12","luis oviedo vega","37465231","","","1","4300000","luisoviedo@gmail.com"),
("13","jose luis vega martinez","36879825",325849897,"","1","3800000","martinezvega@gmail.com"),
("14","mariel parra ortiz","20259846",321592203,"vereda san juan","1","3400000","marielortiz@gmail.com"),
("15","manuel pera noniel","22135022","356879123","","1","3600000","nonielpera@gmail.com"),
("16","eleuterio carreño","23203451","348975621","","1","2900000",""),
("17","isnardo duran vega","2403201","3789252154","","1","3100000","duranisnardo@gmail.com"),
("18","brayan roa castellanos","25230156",3218791231,"","1","2830000",""),
("19","hermes roa dran","26023789","","cra 15 #10-70","1","1900000",""),
("20","agustin roa parra","270879","","","1","1230000","");

#tabla de produccion
insert into producciones(id_produccion,fecha,animal,cantidad)

values("1","2023-04-15","1","9"),
("2","2023-04-15","2","9"),
("3","2023-04-15","3","9"),
("4","2023-04-15","4","10"),
("5","2023-04-15","6","8"),
("6","2023-04-15","7","9"),
("7","2023-04-15","8","7"),
("8","2023-04-15","9","11"),
("9","2023-04-15","10","9"),
("10","2023-04-15","11","9"),
("11","2023-04-15","12","9"),
("12","2023-04-15","13","9"),
("13","2023-04-15","17","6"),
("14","2023-04-16","1","9"),
("15","2023-04-16","2","9"),
("16","2023-04-16","3","9"),
("17","2023-04-16","4","11"),
("18","2023-04-16","6","10"),
("19","2023-04-16","7","9"),
("20","2023-04-16","8","9"),
("21","2023-04-16","9","9"),
("22","2023-04-16","10","10"),
("23","2023-04-16","11","8"),
("24","2023-04-16","12","8"),
("25","2023-04-16","13","10"),
("26","2023-04-16","17","7");

#tabla de salud
insert into salud(id_salud,fecha,animal,responsable,descripcion_enfermedad,descripcion_tratamiento,gastos)

values("1","2023-01-02","1","1","vitamina","inyectado en la vena","30000"),
("2","2023-01-02","2","2","vitamina","inyectado en la vena","30000"),
("3","2023-01-02","4","3","vitamina","inyectado en la vena","30000"),
("4","2023-01-02","6","4","vitamina","inyectado en la vena","30000"),
("5","2023-01-02","12","5","vitamina","inyectado en la vena","30000"),
("6","2023-01-10","10","9","purga","via oral","10000"),
("7","2023-01-10","1","10","purga","via oral","10000"),
("8","2023-01-10","2","9","purga","via oral","10000"),
("9","2023-01-10","3","10","purga","via oral","10000"),
("10","2023-01-10","14","10","purga","via oral","10000"),
("11","2023-01-10","15","9","purga","via oral","10000"),
("12","2023-02-16","16","7","fumigo garrapata","rociador","15000"),
("13","2023-02-16","1","3","fumigo garrapata","rociador","15000"),
("14","2023-02-16","2","2","fumigo garrapata","rociador","15000"),
("15","2023-02-16","10","1","fumigo garrapata","rociador","15000"),
("16","2023-02-16","12","19","fumigo garrapata","rociador","15000"),
("17","2023-02-16","9","20","fumigo garrapata","rociador","15000"),
("18","2023-02-16","8","15","fumigo garrapata","rociador","15000"),
("19","2023-02-16","7","11","fumigo garrapata","rociador","15000"),
("20","2023-02-16","6","12","fumigo garrapata","rociador","15000");

#tabla de ubicacion
insert into ubicacion(id_ubicacion,nombre,capacidad)

values("1","el romasal","20"),
("2","piedras blancas","10"),
("3","la playa","12"),
("4","el playon","13"),
("5","los colorados","7"),
("6","el cachipay","8"),
("7","agua linda","10"),
("8","la sequita","5"),
("9","playa blanca","4"),
("10","bruces","6"),
("11","tierra blanca","6"),
("12","piedritas","6"),
("13","la mesa","5"),
("14","la judia","3"),
("15","mausoleo","4"),
("16","el barco","5"),
("17","la montaña","6"),
("18","quebrada alta","5"),
("19","el peñon","4"),
("20","mesitas","2");

select *from animales ;   
select *from cliente_carne ; 
select *from compras ; 
select *from compras_insumos ; 
select *from insumos ; 
select *from producciones ; 
select *from razas ; 
select *from responsables ; 
select *from salud ; 
select *from ubicacion ; 
select *from ventas_carne ; 
select *from ventas_leche ; 