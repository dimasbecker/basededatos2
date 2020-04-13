
create table cuenta(
cue_numero char(2),
cue_subcuenta char(4),
cue_descripcion varchar(50)
constraint Pk_Cuenta primary key (cue_numero,cue_subcuenta)
)

create table Movimiento(
id_movimiento int not null identity(1,1),
cue_numero char(2),
cue_subcuenta char(4),
debito int null, 
credito int null, 
mov_descripcion varchar(50),
mov_fecha datetime,
)


create table Resumen(
cue_numero char(2),
cue_subcuenta char(4),
debito int null, 
credito int null, 
fecha_calculo datetime,
constraint Fk_Resumen foreign key (cue_numero,cue_subcuenta) references cuenta (cue_numero,cue_subcuenta)
)

