
--tabla ejemplo
CREATE TABLE pruebaGit
(
    id int NOT NULL,
    nombre varchar(50),
    edad int
)

--tabla auditoria
CREATE TABLE auditoria
(
    id int NOT NULL,
    fecha DATETIME,
    tabla varchar(50),
    id_afectado int,
    tipo_accion varchar(50),
    usuario varchar(50)
)