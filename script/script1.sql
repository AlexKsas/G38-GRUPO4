/*
SQLyog Ultimate v13.1.1 (64 bit)

CREATE DATABASE `tiendaabc` /!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /!80016 DEFAULT ENCRYPTION='N' */;

USE `tiendaabc`;

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `cedula_cliente` BIGINT NOT NULL,
  `direccion_cliente` VARCHAR(255) NOT NULL,
  `email_cliente` VARCHAR(255) NOT NULL,
  `nombre_cliente` VARCHAR(255) NOT NULL,
  `telefono_cliente` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`cedula_cliente`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT  INTO `clientes`(`cedula_cliente`,`direccion_cliente`,`email_cliente`,`nombre_cliente`,`telefono_cliente`) VALUES 
(123123,'cll 55 a','clientr1@gmail.com','Pedro','Perez');


CREATE TABLE `usuarios` (
  `cedula_usuario` BIGINT NOT NULL,
  `email_usuario` VARCHAR(255) NOT NULL,
  `nombre_usuario` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`cedula_usuario`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



INSERT  INTO `usuarios`(`cedula_usuario`,`email_usuario`,`nombre_usuario`,`password`,`usuario`) VALUES 
(1,'jf12@mail.com','John Casallas','admin123','admininicial'),
(2,'jf1203@mail.com','Juan Casallas','pass','user'),
(3,'f12034@mail.com','Jj Casallas','pass2','user2'),
(555,'abc@mail.com','Pedro','123','user555'),
(6677,'abc@mail.com','prueba2','789','user00');