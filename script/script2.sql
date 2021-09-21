#### Creacion y uso de la base de datos ####
CREATE DATABASE tiendaABC;

USE tiendaABC;

#### modulo de login y usuarios ####
CREATE TABLE usuarios (
	cedula_usuario BIGINT PRIMARY KEY,
    email_usuario VARCHAR(255) NOT NULL,
    nombre_usuario VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    usuario VARCHAR(255) NOT NULL
);
#### modulo de login y cliente ####
CREATE TABLE clientes (
	cedula_cliente BIGINT PRIMARY KEY,
    direccion_cliente VARCHAR(255) NOT NULL,
    email_cliente VARCHAR(255) NOT NULL,
    nombre_cliente VARCHAR(255) NOT NULL,
    telefono_cliente VARCHAR(255) NOT NULL
    
);





INSERT INTO usuarios VALUES(001,'jf12@mail.com','John Casallas', 'admin123','admininicial');
INSERT INTO usuarios VALUES(002,'jf1203@mail.com','Juan Casallas', 'pass','user');
INSERT INTO usuarios VALUES(003,'f12034@mail.com','Jj Casallas', 'pass2','user2');