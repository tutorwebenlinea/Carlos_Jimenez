



CREATE DATABASE app_registro_limpieza;

CREATE TABLE usuario (

	id_usuario int(11) NOT NULL,
	nombre_usuario varchar(30) NOT NULL,
	apellido_usuario varchar(30) NOT NULL,
	correo_electronico varchar(255) NOT NULL, 
	tipo_usuario int(11) NOT NULL, 
	comentarios LONGTEXT NULL

);

CREATE TABLE tipo_usuario (

	tipo_usuario int(11) NOT NULL,
	nombre_tipo_usuario varchar(30) NOT NULL,
	comentarios LONGTEXT NULL

);

-- ========================================================











CREATE TABLE edificio (

	id_edificio int(11) NOT NULL,
	ubicacion varchar(30) NOT NULL,
	nombre_edicicio varchar(255) NOT NULL,
	descripcion LONGTEXT NOT NULL 

);


CREATE TABLE cubulo(

	id_cubiculo int(11) NOT NULL,
	id_tipo_cubiculo int(11) NOT NULL,
	id_piso int(11) NOT NULL,
	nombre_cubiculo varchar(50) NULL,
	descripcion LONGTEXT NOT NULL,
	QR_codigo_hash varchar(255) not null,
	id_imagen_QR varchar(255) not null,
	id_criterios int(11) not null,

);


CREATE TABLE tipo_cubiculo (

	id_tipo_cubiculo int(11) NOT NULL,
	nombre_tipo_cubiculo varchar(30) NOT NULL,
	comentarios LONGTEXT NULL

);



CREATE TABLE piso(
	id_piso int(11) NOT NULL,
	id_edificio int(11) NOT NULL,
	comentarios LONGTEXT NULL


);


-- CREATE TABLE image_cubiculo(
-- 	id_imagen int(11) NOT NULL,
-- 	descripcion varchar(255),

-- );

CREATE TABLE evaluacion(
	id_evaluacion int(11) not null,
	id_cubiculo int(11) not null,
	fecha DATE not null,
	hora TIME not null,
	id_criterios int(11) not null


);


CREATE TABLE evaluacion(
	id_evaluacion int(11) not null,
	id_cubiculo int(11) not null,
	fecha_inicio DATE not null,
	fecha_fin DATE null,
	hora_inicio TIME not null,
	hora_fin TIME null

);


CREATE TABLE criterios(

	id_criterio int(11) not null,
	nombre_critario int(11) not null,
	id_propiedad_criterio int(11) not null,
	descripcion LONGTEXT  null,
	hora_fin TIME null,

);

CREATE TABLE id_propiedad_criterio(
	id_propiedad_criterio int(11) not null,
	nombre_propiedad_criterio int(11) not null,
	descripcion LONGTEXT null,
);

