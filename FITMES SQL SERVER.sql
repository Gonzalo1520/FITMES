CREATE DATABASE FITMESTF;

USE FITMESTF;


-- tables
-- Table: USUARIO
CREATE TABLE USUARIO (
    CUsuario int  NOT NULL PRIMARY KEY,
    UNombre varchar(256)  NOT NULL,
    UApellido varchar(256)  NOT NULL,
    UEdad int  NOT NULL,
    UPeso int  NOT NULL,
    UAltura int  NOT NULL
    
);

-- Table: NUTRICIONISTA
CREATE TABLE NUTRICIONISTA (
    n_id int  NOT NULL PRIMARY KEY,
    n_nombre varchar(256)  NOT NULL,
    n_apellido varchar(256)  NOT NULL,
    n_experiencia int  NOT NULL
    
);

-- Table: CITA
CREATE TABLE CITA (
    CCita int  NOT NULL PRIMARY KEY,
    fecha date  NOT NULL,
    duracion int  NOT NULL,
    n_id int,
	FOREIGN KEY (n_id) REFERENCES NUTRICIONISTA(n_id),
	CUsuario int,
    FOREIGN KEY (CUsuario) REFERENCES USUARIO(CUsuario)
);

-- Table: COMIDA
CREATE TABLE COMIDA (
    c_id int  NOT NULL PRIMARY KEY,
    nombre_comida varchar(256)  NOT NULL,
    tipo_comida varchar(256)  NOT NULL,
    ingredientes varchar(256)  NOT NULL,
    calorias int  NOT NULL,
    costo money  NOT NULL
);

-- Table: ENFERMEDAD
CREATE TABLE ENFERMEDAD (
    e_id int  NOT NULL PRIMARY KEY,
    e_nombre varchar(256)  NOT NULL,
    gravedad varchar(256)  NOT NULL,
    CUsuario int,
    FOREIGN KEY (CUsuario) REFERENCES USUARIO(CUsuario)
);


-- Table: NUTRICIONISTA_CONTACTO
CREATE TABLE NUTRICIONISTA_CONTACTO (
    CContacto int  NOT NULL PRIMARY KEY,
    n_telefono int  NOT NULL,
    n_correo varchar(256)  NOT NULL,
    n_id int,
	FOREIGN KEY (n_id) REFERENCES NUTRICIONISTA(n_id)
);

-- Table: NUTRICIONISTA_PLATO
CREATE TABLE NUTRICIONISTA_PLATO (
    comida_c_id int  NOT NULL PRIMARY KEY,
    n_id int,
	FOREIGN KEY (n_id) REFERENCES NUTRICIONISTA(n_id)
);

-- Table: PLATO_RECOMENDACION
CREATE TABLE PLATO_RECOMENDACION (
    CPlatoRecomendacion int  NOT NULL PRIMARY KEY,
    horario datetime  NOT NULL,
    cantidad int  NOT NULL,
    e_id int,
	FOREIGN KEY (e_id) REFERENCES ENFERMEDAD(e_id),
    c_id int,
	FOREIGN KEY (c_id) REFERENCES COMIDA(c_id),
    CUsuario int,
    FOREIGN KEY (CUsuario) REFERENCES USUARIO(CUsuario),
    n_id int,
	FOREIGN KEY (n_id) REFERENCES NUTRICIONISTA(n_id)
);


-- Table: USUARIO_CONTACTO
CREATE TABLE USUARIO_CONTACTO (
    CContacto int  NOT NULL PRIMARY KEY,
    u_telefono int  NOT NULL,
    u_correo varchar(256)  NOT NULL,
    CUsuario int,
    FOREIGN KEY (CUsuario) REFERENCES USUARIO(CUsuario)
);

