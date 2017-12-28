Create Database Warlock
use Warlock

Create table karma (
id_karma int auto_increment,
primary key (id_karma),
promedio varchar(50),
total varchar(50),
descripcion varchar(50)
);

create table Habilidades (
id_habilidades int auto_increment,
primary key (id_habilidades),
categoria varchar (50),
Descripcion varchar(50)
);

create table asociacion(
id_asociacion int auto_increment,
primary key (id_asociacion),
nombre varchar(20),
descripcion varchar(20)
);


Create table Usuario(
id_user int auto_increment,
primary key (id_user),
nickname varchar(20),
contrasena varchar(20),
correo varchar(20),
fecha_nac varchar(20),
id_karm int,
id_habilidad int,
id_asocia int,
foreign key (id_karm) references karma(id_karma),
foreign key (id_habilidad) references Habilidades(id_habilidades),
foreign key (id_asocia) references asociacion(id_asociacion)
);


Create table pago(
id_pago int auto_increment,
primary key(id_pago),
cantidad int,
banco varchar(20),
Descripcion varchar(150),
id_usua int,
foreign key (id_usua) References Usuario(id_user)
);



create table proyectos(
id_proyecto int auto_increment,
primary key (id_proyecto),
nombre varchar(20),
fechai varchar(20),
fechaf varchar(20),
lisado_tareas varchar(20)
);


create table tareas (
id_tareas int auto_increment,
primary key (id_tareas),
nombre varchar(20),
descripcion varchar(20),
fecha_inicio varchar(20),
conocimiento varchar(50)
);

create table detalle_tp (
id_detalletp int auto_increment,
primary key (id_detalletp),
descripcion varchar(150),
id_proyect int,
id_tare int,
foreign key (id_proyect) References proyectos(id_proyecto),
foreign key (id_tare) References tareas(id_tareas)
);

create table detalle_up(
id_up int auto_increment,
primary key (id_up),
descripcion varchar(100),
id_proyecti int,
id_usuario int,
foreign key (id_usuario) References Usuario(id_user),
foreign key (id_proyecti) References proyectos(id_proyecto)
);