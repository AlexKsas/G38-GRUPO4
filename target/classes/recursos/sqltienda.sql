######## ######## ######## ######## ######## ######## 
######## Creacion y uso de la base de datos ########
######## ######## ######## ######## ######## ######## 
CREATE DATABASE tiendajalac;

USE tiendajalac;

######## modulo de login y usuarios ########
CREATE TABLE usuarios (
    cedula_usuario BIGINT PRIMARY KEY,
    email_usuario VARCHAR(255) NOT NULL,
    nombre_usuario VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    usuario VARCHAR(255) NOT NULL
); 

INSERT INTO usuarios VALUES(001,'jhon-972010@hotmail.com','Jonathan Casas','jonathanksas','Alex123');
INSERT INTO usuarios VALUES(002,'Jhonatan.carvajal2@hotmail.com','jhonatan Carvajal','jonathancarvajal','carvajal123');
INSERT INTO usuarios VALUES(003,'jhonatancamilo240@gmail.com','Jonathan Camilo','jhonatancamilo','camilo123');
INSERT INTO usuarios VALUES(004,'jf12cp@gmail.com','John Casas','johncasallas','john123');

CREATE UNIQUE INDEX usuario_unico 
ON usuarios(usuario);



//eliminar tabla usuario
DROP TABLE usuarios;

DELETE FROM usuarios 
WHERE
    cedula_usuario = 001;

UPDATE usuarios 
SET 
    email_usuario = '',
    nombre_usuario = '',
    password = '',
    usuario = ''
WHERE
    cedula_usuario = 002;

SELECT 
    *
FROM
    usuarios;