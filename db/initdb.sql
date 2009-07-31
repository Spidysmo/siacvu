INSERT Personas VALUES('Administrador', null, null, 'admin@mail.com', 1, GETDATE(), 1, GETDATE(), 1)
INSERT Personas VALUES('Peter', 'Parker', null, 'admin@mail.com', 1, GETDATE(), 1, GETDATE(), 1)

INSERT Usuarios VALUES('administrador', 'admin', 1, GETDATE(), 1, GETDATE(), 1, 1)
INSERT Usuarios VALUES('pparker', 'parker', 1, GETDATE(), 1, GETDATE(), 1, 2)

INSERT Roles VALUES('Administradores', 1, GETDATE(), 1, GETDATE(), 1)
INSERT Roles VALUES('Investigadores', 1, GETDATE(), 1, GETDATE(), 1)

INSERT UsuarioRol VALUES(1, 1)
INSERT UsuarioRol VALUES(2, 2)

/* Faltan estos valores */
insert into Departamentos values('Departament 1',1,GETDATE(),1,GETDATE(),1);
insert into Departamentos values('Departament 2',1,GETDATE(),1,GETDATE(),1);
insert into Departamentos values('Departament 3',1,GETDATE(),1,GETDATE(),1);

insert into Estados values('Activo',1,GETDATE(),1,GETDATE(),1);
insert into Estados values('Baja',1,GETDATE(),1,GETDATE(),1);
insert into Estados values('Sab�tico',1,GETDATE(),1,GETDATE(),1);
insert into Estados values('Licencia c/ sueldo',1,GETDATE(),1,GETDATE(),1);
insert into Estados values('Licencia s/ sueldo',1,GETDATE(),1,GETDATE(),1);
insert into Estados values('Superaci�n acad�mica',1,GETDATE(),1,GETDATE(),1);

insert into GradoAcademicos values('Licenciatura',1,GETDATE(),1,GETDATE(),1);
insert into GradoAcademicos values('Maestr�a',1,GETDATE(),1,GETDATE(),1);
insert into GradoAcademicos values('Doctor',1,GETDATE(),1,GETDATE(),1);

insert into Categorias values('Titular A',1,GETDATE(),1,GETDATE(),1);
insert into Categorias values('Titular B',1,GETDATE(),1,GETDATE(),1);
insert into Categorias values('Titular C',1,GETDATE(),1,GETDATE(),1);
insert into Categorias values('Asociado A',1,GETDATE(),1,GETDATE(),1);
insert into Categorias values('Asociado B',1,GETDATE(),1,GETDATE(),1);
insert into Categorias values('Asociado C',1,GETDATE(),1,GETDATE(),1);

insert into Cargos values('Investigador',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director de Departamento',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director Regional',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Coordinador de Programa',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Presidente',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Secretario General Acad�mico',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Coordinador de Departamento de Apoyo',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Coordinador de Oficinas de Enlace y Vinculaci�n',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director de Posgrado',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director General de Vinculaci�n y Apoyo Acad�mico',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director General Acad�mico',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Becario de Alto Nivel',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Investigador por Proyecto',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Secretario General de Planeaci�n y Desarrollo Institucional',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Direccion General de Administracion y Finanzas',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Direccion General Regional Noroeste',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Direccion de Area',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Otros',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Coordinador de Posgrado',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Coordinador de EcoParque',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Asistente de Director',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Estudiante Becario',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Investigador visitante',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director General de Docencia',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director General de Vinculaci�n Institucional',1,GETDATE(),1,GETDATE(),1);
insert into Cargos values('Director General de Asuntos Acad�micos',1,GETDATE(),1,GETDATE(),1);

insert into SNIs values('Candidato',1,GETDATE(),1,GETDATE(),1);
insert into SNIs values('Nivel 1',1,GETDATE(),1,GETDATE(),1);
insert into SNIs values('Nivel 2',1,GETDATE(),1,GETDATE(),1);
insert into SNIs values('Nivel 3',1,GETDATE(),1,GETDATE(),1);
insert into SNIs values('Emerito',1,GETDATE(),1,GETDATE(),1);

insert into Sedes values('Matamoros','Direcci�n General Regional Noreste',1,GETDATE(),1,GETDATE(),1);
insert into Sedes values('Nuevo Laredo','Direcci�n General Regional Noreste',1,GETDATE(),1,GETDATE(),1);
insert into Sedes values('Piedras Negras','Direcci�n General Regional Noreste',1,GETDATE(),1,GETDATE(),1);
insert into Sedes values('Monterrey','Direcci�n General Regional Noreste',1,GETDATE(),1,GETDATE(),1);
insert into Sedes values('Ciudad Juarez','Direcci�n General Regional Noroeste',1,GETDATE(),1,GETDATE(),1);
insert into Sedes values('Tijuana','Tijuana',1,GETDATE(),1,GETDATE(),1);
insert into Sedes values('Mexicali','Direcci�n General Regional Noroeste',1,GETDATE(),1,GETDATE(),1);
insert into Sedes values('Nogales','Direcci�n General Regional Noroeste',1,GETDATE(),1,GETDATE(),1);