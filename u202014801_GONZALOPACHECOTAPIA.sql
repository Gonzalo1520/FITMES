Use FITMESTF

/*1. Fitmes acorde a la buena acogida desea implementar un sistema de "Suscripciones",
por lo cual necesita crear una tabla que contenga el Codigo de usuario, Tipo de Suscripcion
y el costo de la suscreipcion, para ello se requiere crear una funcion la que va a permitir a
fitmes agregar suscripciones de una manera mas sencilla, en las cuales se deben de mostrar el 
Codigo de usuario, tipo de suscripcion y el monto correspondiente, ordenadas de la suscripcion
mas cara a la mas economica.*/

Create table Suscripcion
(
CUsuario nchar(5),
TipoSuscripcion nvarchar(20),
CostoSuscripcion money
)

CREATE PROCEDURE CrearSuscribcion
(
@CUsuario nchar(5),
@TipoSuscripcion nvarchar(20),
@CostoSuscripcion money

)
AS
	BEGIN
		INSERT INTO Suscripcion(CUsuario, TipoSuscripcion, CostoSuscripcion)
		VALUES (@CUsuario,@TipoSuscripcion,@CostoSuscripcion);
	END
GO

EXEC CrearSuscribcion 'SUB1', 'Clasica', 20
EXEC CrearSuscribcion 'SUB2', 'Premium', 30
EXEC CrearSuscribcion 'SUB3', 'Platinium', 40
EXEC CrearSuscribcion 'SUB4', 'VIP', 50

Select * from Suscripcion
Order by CostoSuscripcion Desc;


/*2. Fitmes desea implementar un nuevo sistema de quejas por parte de los usuarios. Para ello 
se debe crear la tabla "Quejas Usuario", en la que todas las quejas van a ser recibidas bajo
los siguientes parametros, Codigo del usuario y nombre, Codigo de la queja y el motivo. Para ello fitmes
desea listar las quejas mostrando el codigo de la queja, el nombre del usuario y el motivo */


CREATE TABLE QuejasUsuario
	(
		CQuejasUsuario	NCHAR(5) PRIMARY KEY
		, CUsuario NCHAR(5)
		, NUsuario NVARCHAR(20)
		, MQueja NCHAR(5)
	)

INSERT INTO QuejasUsuario
VALUES
('QU1','CQ01','Pedro','E1'),
('QU2','CQ02','Paolo','E2'),
('QU3','CQ03','Manolo','E1'),
('QU4','CQ04','Manuela','E2'),
('QU5','CQ05','Paula','E1'),
('QU6','CQ06','Paquita','E1'),
('QU7','CQ07','Sofia','E1'),
('QU8','CQ08','Rosa','E1'),
('QU9','CQ09','Diego','E1'),
('QU10','CQ10','Takeshi','E1')

SELECT CQuejasUsuario, NUsuario, MQueja
FROM QuejasUsuario
GROUP BY CQuejasUsuario, NUsuario, MQueja



/*3. La empresa fitmes a detectado un error en el registro de usuarios debido a que no se ha considerado un
campo el cual es impresindible para el registro de nuevos usuarios el cual es el "sexo", para ello necesitara
implementar una columna llamada "Sexo usuario", para asi poder saber cuantas mujeres y hombres estan registrados
en fitmes a la fecha.*/

SELECT*FROM USUARIO

ALTER TABLE USUARIO ADD USexo varchar(256) 

SELECT*FROM USUARIO

UPDATE USUARIO
SET USexo = 'Masculino'
WHERE CUsuario = 1

UPDATE USUARIO
SET USexo = 'Femenino'
WHERE CUsuario = 10


SELECT UNombre, USexo FROM USUARIO WHERE USexo = 'Masculino' 
UNION
SELECT UNombre, USexo FROM USUARIO WHERE USexo = 'Femenino' 

SELECT COUNT(USexo) AS Hombres FROM USUARIO WHERE USexo = 'Masculino'
SELECT COUNT(USexo) AS Mujeres FROM USUARIO WHERE USexo = 'Femenino'


/*4. Fitmes realizo una activacion la semana pasada con la finalidad de poder expandir los usuarios, y asi poder
llegar a mas personas, por lo que requieren de estas ser registradas en la base de datos, debido a que eran usuarios,
los que en ese momento no contaban con un dispositivo movil en su momento, Los datos a ingresar son los siguientes:
CUsuario,UNombre,UApellido,UEdad,UPeso,UAltura,USexo. Por ende se requiere que estos sean los mismos que se muestren
en pantalla.*/

SELECT * FROM USUARIO

INSERT INTO USUARIO(CUsuario,UNombre,UApellido,UEdad,UPeso,UAltura,USexo)
VALUES
(11,'Pato','Parodi',25,75,180,'Masculino'),
(12,'Sheyla','Rojas',22,55,155,'Femenino')

SELECT * FROM USUARIO_CONTACTO

INSERT INTO USUARIO_CONTACTO(CContacto,u_telefono,u_correo,CUsuario)
VALUES
(11,998657223,'Pato_P@gmail.com',11),
(12,996352478,'Sheyla_R@gmail.com',12)

SELECT * FROM USUARIO WHERE UNombre = 'Pato'
UNION
SELECT * FROM USUARIO WHERE UNombre = 'Sheyla'



