



CREATE DATABASE app_registro_limpieza;

CREATE TABLE usuario (

	id_usuario int(11) NOT NULL,
	nombre_usuario varchar(30) NOT NULL,
	apellido_usuario varchar(30) NOT NULL,
	correo_electronico varchar(255) NOT NULL, 
	tipo_usuario int(11) NOT NULL, 
	comentarios LONGTEXT NULL

);

CREATE TABLE edificio (

	id_edificio int(11) NOT NULL,
	ubicacion varchar(30) NOT NULL,
	nombre_edicicio varchar(255) NOT NULL,
	descripcion LONGTEXT NOT NULL 

);



CREATE TABLE cubulo(

	id_cubiculo int(11) NOT NULL,
	tipo_cubiculo int(11) NOT NULL,
	id_edificio int(11) NOT NULL,
	id_piso int(11) NOT NULL, 
	nombre_cubiculo varchar(50) NULL,
	descripcion LONGTEXT NOT NULL 

);

CREATE TABLE piso(
	id_piso int(11) NOT NULL,
	id_edificio int(11) NOT NULL,

);

CREATE TABLE image_cubiculo(
	id_imagen int(11) NOT NULL,
	descripcion varchar(255),

);

CREATE TABLE evaluacion(

);