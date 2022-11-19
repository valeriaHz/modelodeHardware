create database tareajoin;
use tareajoin;
CREATE TABLE t_hardware (
    id_hardware INT AUTO_INCREMENT,
    nombre VARCHAR(20),
    modelo VARCHAR(20),
    PRIMARY KEY (id_hardware)
);
CREATE TABLE t_usuario (
    id_usuario INT AUTO_INCREMENT,
    nombre VARCHAR(20),
    paterno VARCHAR(20),
    materno VARCHAR(20),
    PRIMARY KEY (id_usuario)
);
CREATE TABLE t_asignaciones (
    id_asignaciones INT AUTO_INCREMENT,
    id_usuario INT,
    id_hardware INT,
    PRIMARY KEY (id_asignaciones)
);

select*from t_hardware;
select*from t_usuario;
select*from t_asignaciones;

create view modeloHard
as
select
concat(user.paterno," ",
		user.materno," ",
        user.nombre) as usuario,
	hard.nombre as nombreHardware,
    hard.modelo
from t_asignaciones as asignacion 
inner join 
t_usuario as user on asignacion.id_usuario = user.id_usuario
inner join 
t_hardware as hard on asignacion.id_hardware = hard.id_hardware;