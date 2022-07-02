INSERT INTO USUARIO(CUsuario,UNombre,UApellido,UEdad,UPeso,UAltura)
VALUES
(1,'Alfredo','Farro',20,70,180),
(2,'Michael','Jordan',40,85,150),
(3,'Jordan','Poole',32,86,160),
(4,'Juan','Perez',45,98,155),
(5,'Diego','Carbajal',25,75,185),
(6,'Daniela','Cabrera',28,99,195),
(7,'Tamara','Fierro',21,65,174),
(8,'Grace','Gonzalez',22,75,154),
(9,'Micaela','Bellido',38,87,189),
(10,'Ariana','Pequeña',45,65,200)
SELECT * FROM USUARIO

INSERT INTO NUTRICIONISTA(n_id,n_nombre,n_apellido,n_experiencia)
VALUES
(1,'Alexis','Frogoziolo',5),
(2,'Alex','Canales',3),
(3,'Diego','Bazan',6),
(4,'Pedro','Pedregal',1),
(5,'Jordana','Rengifo',2)
SELECT * FROM NUTRICIONISTA


INSERT INTO CITA(CCita,fecha,duracion,n_id,CUsuario)
VALUES
(1,'2022-06-30',40,1,2),
(2,'2022-05-30',30,2,1),
(3,'2022-05-29',25,3,2),
(4,'2022-05-15',45,4,8),
(5,'2022-04-29',50,5,2),
(6,'2022-04-12',35,5,7),
(7,'2022-04-01',40,4,6),
(8,'2022-03-30',45,3,5),
(9,'2022-02-25',55,2,10),
(10,'2022-01-15',60,1,2)
SELECT * FROM CITA


INSERT INTO COMIDA(c_id,nombre_comida,tipo_comida,ingredientes,calorias,costo)
VALUES
(1,'Arroz Chaufa','Almuerzo','Arroz, Pollo, Sillao',1500,15),
(2,'Ensalada Cesar','Ensaladas','Lechuga, Tomate, Pollo, Aceite de oliva, Zanahoria',200,15),
(3,'Ensalada Clasica','Ensaladas','Lechuga, Tomate',100,10),
(4,'Ensalada Cocida','Ensaladas','Zanahoria, Beterraga, Vainas, Palta',100,10),
(5,'Tallarines al Alfredo','Pastas','Fideos, Salsa Blanca, Jamon, Nuez Moscada, Sal, Pimienta, Comino',600,20),
(6,'Tallarines Rojos','Pastas',':" Fideos, Salsa Roja, tomate, cebolla, Sal, Pimienta, Comino',550,15),
(7,'Canelones','Pastas','Carne molida, cebolla, pimiento verde, salsa de tomate, pasta, queso rallado, mantequilla, harina, leche, sal ,comino',650,20),
(8,'Lasagna de Carne','Pastas','10 laminas de lasagna, Aceite, Carne molida, Salsa Roja, Cebolla picada, apio, queso mozarella, oregano, harina, mantequilla, leche, sal, pimienta, nuez moscada',730,25)
SELECT * FROM COMIDA

INSERT INTO ENFERMEDAD(e_id,e_nombre,gravedad,CUsuario)
VALUES
(1,'Diabetes','Grave',1),
(2,'Presion Arterial','Moderado',6),
(3,'Insuficiencia Renal','Grave',3),
(4,'Asma','Leve',8),
(5,'Alergia','Moderado',5),
(6,'Gastritis','Leve',10)
SELECT * FROM ENFERMEDAD


INSERT INTO NUTRICIONISTA_CONTACTO(CContacto,n_telefono,n_correo,n_id)
VALUES
(1,945268963,'Alexis_frogo@gmail.com',1),
(2,945781246,'Alex_Canales@gmail.com',2),
(3,930124589,'Diego_Bazan@gmail.com',3),
(4,968532478,'Pedro_Pedregal@gmail.com',4),
(5,986654732,'Jordana_Rengifo@gmail.com',5)
SELECT * FROM NUTRICIONISTA_CONTACTO

/*FALTA*/
INSERT INTO NUTRICIONISTA_PLATO(comida_c_id,n_id)
VALUES
(1,1),
(3,2),
(5,3),
(7,4),
(2,5)
SELECT * FROM NUTRICIONISTA_PLATO


INSERT INTO PLATO_RECOMENDACION(CPlatoRecomendacion,horario,cantidad,e_id,c_id,CUsuario,n_id)
VALUES
(1,'2022-06-30 14:30:00',1,1,1,2,1),
(2,'2022-05-30 13:00:02',2,2,1,1,2),
(3,'2022-05-29 14:00:00',1,3,1,2,3),
(4,'2022-05-15 14:15:00',3,4,2,8,4),
(5,'2022-04-29 13:30:00',1,5,3,2,5),
(6,'2022-04-12 14:55:55',2,6,4,7,5),
(7,'2022-04-01 13:45:00',2,6,1,6,4),
(8,'2022-03-30 14:40:00',3,6,4,5,3),
(9,'2022-02-25 13:25:00',3,5,4,10,2),
(10,'2022-01-15 15:00:00',1,6,2,2,1)
SELECT * FROM PLATO_RECOMENDACION


INSERT INTO USUARIO_CONTACTO(CContacto,u_telefono,u_correo,CUsuario)
VALUES
(1,945789654,'Alfredo_F@gmail.com',1),
(2,999575685,'Michael_J@gmail.com',2),
(3,949685745,'Jordan_P@gmail.com',3),
(4,965321657,'Juan_P@gmail.com',4),
(5,978564321,'Diego_C@gmail.com',5),
(6,921356854,'Daniela_C@gmail.com',6),
(7,976865346,'Tamara_F@gmail.com',7),
(8,978164592,'Grace_G@gmail.com',8),
(9,944343440,'Micaela_B@gmail.com',9),
(10,945687598,'Ariana_P@gmail.com',10)
SELECT * FROM USUARIO_CONTACTO