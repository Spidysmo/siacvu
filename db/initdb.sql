IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
DROP VIEW [dbo].[Usuarios]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Alumnos]'))
DROP VIEW [dbo].[Alumnos]
GO

CREATE VIEW Usuarios AS
SELECT 3 AS Id, 'Investigador 1' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno,
   'investigador1' AS UsuarioNombre, 'password' AS Clave, 'investigador1@colef.mx' AS CorreoElectronico,
   'H' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 1 AS Activo, 
   'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
   'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
   'PRT456' AS CodigoRH
UNION
SELECT 2 AS Id, 'Investigador 2' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno,
   'investigador2' AS UsuarioNombre, 'password' AS Clave, 'investigador2@colef.mx' AS CorreoElectronico,
   'M' AS Sexo, '1975-08-25' AS FechaNacimiento, '2002-08-13' AS FechaIngreso, 1 AS Investigador, 1 AS Activo,
   'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
   'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
   'PRT456' AS CodigoRH
UNION
SELECT 1 AS Id, 'Administrador' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno,
   'administrador' AS UsuarioNombre, 'password' AS Clave, 'administrador@colef.mx' AS CorreoElectronico,
   'M' AS Sexo, '1975-07-29' AS FechaNacimiento, '2005-11-21' AS FechaIngreso, 0 AS Investigador, 1 AS Activo,
   'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
   'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
   'PRT456' AS CodigoRH
UNION
SELECT 4 AS Id, 'DGAA' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno,
   'dgaa' AS UsuarioNombre, 'password' AS Clave, 'dgaa@colef.mx' AS CorreoElectronico,
   'H' AS Sexo, '1987-01-14' AS FechaNacimiento, '1999-03-07' AS FechaIngreso, 0 AS Investigador, 1 AS Activo,
   'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
   'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
   'PRT456' AS CodigoRH
GO

CREATE VIEW Alumnos AS
SELECT 2 AS Id, 'Natalia Zamudio Santos' AS Nombre, 1 AS GradoAcademicoFk, 1 AS ProgramaEstudioFk
UNION
SELECT 1 AS Id, 'Alejandro Vald�z Ru�z' AS Nombre, 1 AS GradoAcademicoFk, 1 AS ProgramaEstudioFk
GO

INSERT Roles VALUES('Administradores', GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Investigadores', GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Dgaa', GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Jefe Departamento', GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Departamento de estudios culturales',GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Departamento de estudios de administraci�n p�blica',GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Departamento de estudios de poblaci�n',GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Departamento de estudios econ�micos',GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Departamento de estudios sociales',GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Departamento de estudios urbanos y del medio ambiente',GETDATE(), GETDATE(), 1, 1, 1)

INSERT UsuarioRol VALUES(1, 1)
INSERT UsuarioRol VALUES(2, 2)
INSERT UsuarioRol VALUES(3, 2)
INSERT UsuarioRol VALUES(4, 3)

insert into USEGs values('Cartograf�a Digital',GETDATE(), GETDATE(), 1, 1, 1);
insert into USEGs values('Geo-Estad�stica',GETDATE(), GETDATE(), 1, 1, 1);
insert into USEGs values('An�lisis Espacial',GETDATE(), GETDATE(), 1, 1, 1);

insert into DirigidoAs values('Sector privado', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Sector acad�mico', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Sector p�blico', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Sector social', GETDATE(), GETDATE(), 1, 1, 1)

insert into EstatusFormacionAcademicas values('Cr�dito terminado',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstatusFormacionAcademicas values('Grado obtenido',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstatusFormacionAcademicas values('Truncado',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstatusFormacionAcademicas values('En proceso',GETDATE(), GETDATE(), 1, 1, 1);

insert into ActividadPrevistas values('Taller',GETDATE(), GETDATE(), 1, 1, 1);
insert into ActividadPrevistas values('Seminario',GETDATE(), GETDATE(), 1, 1, 1);
insert into ActividadPrevistas values('Diplomado',GETDATE(), GETDATE(), 1, 1, 1);
insert into ActividadPrevistas values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into ImpactoPoliticaPublicas values('Elaboraci�n de Diagn�stico',GETDATE(), GETDATE(), 1, 1, 1);
insert into ImpactoPoliticaPublicas values('Elaboraci�n de Plan Estrat�gico',GETDATE(), GETDATE(), 1, 1, 1);
insert into ImpactoPoliticaPublicas values('Dise�o de Programa',GETDATE(), GETDATE(), 1, 1, 1);
insert into ImpactoPoliticaPublicas values('Dise�o de Estrategias',GETDATE(), GETDATE(), 1, 1, 1);
insert into ImpactoPoliticaPublicas values('Evaluaci�n de Pol�tica',GETDATE(), GETDATE(), 1, 1, 1);
insert into ImpactoPoliticaPublicas values('Evaluaci�n de Impacto',GETDATE(), GETDATE(), 1, 1, 1);
insert into ImpactoPoliticaPublicas values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into Monedas values('Pesos',GETDATE(), GETDATE(), 1, 1, 1);
insert into Monedas values('Dolares',GETDATE(), GETDATE(), 1, 1, 1);

insert into ProductoAcademicos values('Libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Cap�tulo en libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Art�culo',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Ponencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Tesis de maestr�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Tesis de doctorado',GETDATE(), GETDATE(), 1, 1, 1);

insert into ProductoDerivados values('Con arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoDerivados values('Sin arbitraje',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoEstancias values('Acad�mica',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEstancias values('Sab�tica',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEstancias values('Postdoctoral',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoInstituciones values('Nacional',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoInstituciones values('Extranjera',GETDATE(), GETDATE(), 1, 1, 1);

insert into Convenios values('Centro de Investigaci�n Cient�fica y de Educaci�n Superior de Ensenada',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n y Desarrollo Tecnol�gico en Electroqu�mica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Consejo Latinoamericano de Ciencias Sociales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('El Colegio de M�xico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('El Colegio de Tlaxcala',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Facultad Latinoamericana de Ciencias Sociales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Asociaci�n Nacional de Universidades e Institutos de Educaci�n  Superior',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Estudios de Pol�tica Comparada, A.C.',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n en Materiales Avanzados',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro Pedag�gico de Sonora',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n y Estudios Superiores en Antropolog�a Social',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('El Colegio de la Frontera Sur',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('El Colegio de Michoac�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('El Colegio Mexiquense',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Institut Francais de Recherche Scientifique pour le Developpement en Cooperation',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Instituto de Investigaciones Dr. Jos� Mar�a Luis Mora',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Southwest Center for Environmental Research and Policy',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Universidad Aut�noma de Coahuila',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n en Alimentaci�n y Desarrollo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaciones Biol�gicas del Noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n Cient�fica de Yucat�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n en Matem�ticas',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaciones en �ptica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Instituto de Ecolog�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Instituto Nacional de Astrof�sica, �ptica y Electr�nica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Instituto Potosino de Investigaci�n Cient�fica y Tecnol�gica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n y Docencia Econ�micas A. C.',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('Centro de Investigaci�n en Geograf�a y Geom�tica Ing. Jorge L. Tamayo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Convenios values('El Colegio de San Luis',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoProyectos values('Consultor�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoProyectos values('Investigaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoProyectos values('Planes de trabajo',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoPublicaciones values('Libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPublicaciones values('Coordinaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPublicaciones values('Compilaci�n',GETDATE(), GETDATE(), 1, 1, 1);

insert into FormatoPublicaciones values('Libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormatoPublicaciones values('Memoria de evento',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormatoPublicaciones values('N�mero especial de revista',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormatoPublicaciones values('Serie breviarium',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormatoPublicaciones values('Reportes estad�sticos',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormatoPublicaciones values('Libro traducido a otro idioma',GETDATE(), GETDATE(), 1, 1, 1);

insert into IdentificadorLibros values('Publicado',GETDATE(), GETDATE(), 1, 1, 1);
insert into IdentificadorLibros values('Editado',GETDATE(), GETDATE(), 1, 1, 1);
insert into IdentificadorLibros values('Traducido',GETDATE(), GETDATE(), 1, 1, 1);
insert into IdentificadorLibros values('Compilaci�n',GETDATE(), GETDATE(), 1, 1, 1);

insert into Proyectos values('El asma in Tijuana: multiple medical systems (El asma en Tijuana: m�ltiples sistemas m�dicos)', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Trayectoria del crecimiento urbano y evaluaci�n de la planeaci�n en ciudades intermedias de la frontera norte de M�xico: Piedras Negras, Matamoros y Reynosa', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('La reforma municipal en M�xico. Agenda para una reforma legislativa', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Prevenci�n y oportuna detecci�n de c�ncer cervicouterino para las mixtecas migrantes de Oaxaca a Baja California', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Antropolog�a del arte ind�gena transfronterizo. La identidad est�tico religiosa en la ritualidad contempor�nea', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Un an�lisis comparativo de la interacci�n en los corredores fronterizos Vancouver-Seatle y San Diego-Tijuana', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Los que no se rindieron: las actividades revolucionarias magonistas en la region fronteriza M�xico-Estados Unidos, 1910-1913', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Identidad, racismos y estereotipos en la frontera M�xico-Estados Unidos', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('United State-Mexico border communities in the Nafta Era', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('El papel de las normas ambientales  y las estretegias competitivas en el cuidado ambiental  de la industria en M�xico.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Hacia una pol�tica de articulaci�n entre los perfiles educativos  y las necesidades del desarrollo regional. (Etapa III)', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Las remesas de migrantes mexicanos en Estados Unidos y su impacto en la econom�a mexicana', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Estudio demogr�fico retrospectivo: movilidad, empleo y familia en M�xico.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('El envejecimiento en M�xico: la siguiente crisis de la transici�n demogr�fica', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Condiciones de salud y bienestar de la poblaci�n envejecida en la Ciudad de M�xico.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Uso y significado de la casa como lugar de trabajo y relaciones de g�nero en trabajadores por cuenta propia en el hogar de Tijuana', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Migraci�n, empleo y vivienda en los municipios y condados de la frontera internacional Estados Unidos-M�xico', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Programa de salud reproductiva', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Construyendo atrav�s de las fronteras:  consolidaci�n del consorcio transfronterizo para la acci�n y la investigaci�n sobre g�nero y salud reproductiva en la frontera M�xico-Estados Unidos', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Grupo de intercambio acad�mico sobre salud reproductiva', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Migraci�n internacional, riesgos asociados al cruce de la frontera y programas locales de ayuda al migrante.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Encuesta sobre Migraci�n en la Frontera Norte de M�xico (Fase V)', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Estudio para impulsar el mejoramiento de la calidad del empleo en la industria maquiladora de exportaci�n.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Inmigraci�n laboral de latinoam�rica en Espa�a: sectores de ocupaci�n, perfiles  y redes sociales.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('La transformaci�n de la industria automotriz y del vestido: comparaci�n entre M�xico, Estados Unidos y Canad�.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Integraci�n norteamericana y desarrollo: impactos del tratado de libre comercio en la reestructuraci�n industrial y el empleo.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Producci�n de computadoras personales en M�xico y su articulaci�n con la producci�n global: una valoraci�n de su estado actual y su futuro potencial.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Desarrollo del internet y el ecomercio en M�xico', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Migraci�n y religi�n: an�lisis de la relaci�n entre las afiliaciones religiosas y la redefinici�n identitaria de los migrantes mexicanos en el Sur de California', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Actualizaci�n del m�dulo urbano del programa regional de desarrollo del corredor costero Tijuana-Ensenada', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Uso y manejo sustentable del agua en el medio urbano de la frontera norte de M�xico', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Turismo, migraci�n y empleo en el municipio de playas de Rosarito, B.C.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Planeaci�n de una estrategia de desarrollo sustentable para las comunidades locales en la reserva de la bi�sfera el Pinacate y el gran Desierto del Altar.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Elaboraci�n-reformulaci�n del Plan de Desarrollo Urbano en  Nuevo Laredo', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('La movilidad laboral geogr�fica como recurso social en la cuenca carbon�fera de Coahuila.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Un grito silenciado: mujer madre en la frontera Este M�xicoamericana', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Apostando a un sue�o: la experiencia de las mujeres que van a parir a Estados Unidos', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Crecimiento, planeaci�n y gesti�n urbana de dos metr�polis del Noreste. Hacia un modelo alternativo  para Monterrey y Saltillo.', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Estudio comparativo de la urbanizaci�n popular en ciudades de la frontera tamaulipeca', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Zonas de alto riesgo, regeneraci�n urbana y reactivaci�n social: la zona poniente de Cd. Ju�rez, de cara a los retos de competitividad internacional del centro urbano', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)
insert into Proyectos values('Estudio de opini�n p�blica en Ojinaga Chihuahua', 0, GETDATE(), GETDATE(), GETDATE(), GETDATE(), 0, null, null, null, null, null, null, null, 0, GETDATE(), 0, null, 0,GETDATE(), GETDATE(), 1, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1, 1, 1)

insert into Paises values('M�xico', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Espa�a', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Estados Unidos', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Canada', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Venezuela', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Jap�n', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Francia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Colombia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Costa Rica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Cuba', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Italia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Argentina', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Brasil', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Uruguay', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Panama', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Guatemala', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Honduras', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Alemania', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Turqu�a', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('El Salvador', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Gran Breta�a', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('China', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Inglaterra', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Tunicia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Egipto', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Bulgaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Puerto Rico', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Holanda', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Ecuador', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Suiza', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('India', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Suecia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Rep�blica Dominicana', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Hawaii', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Irlanda', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Chile', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('B�lgica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Reino Unido', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Bolivia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Eslovaquia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Rep�blica Checa', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Portugal', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Filipinas', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Marruecos', GETDATE(), GETDATE(), 1, 1, 1)
insert into Paises values('Nigeria', GETDATE(), GETDATE(), 1, 1, 1)

-- 1=Mexico 3=Estados Unidos
insert into EstadoPaises values('Aguascalientes',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Baja California Norte',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Baja California Sur',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Campeche',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Chihuahua',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Chiapas',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Coahuila',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Colima',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Distrito Federal',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Durango',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Estado de M�xico',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Guerrero',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Guanajuato',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Hidalgo',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Jalisco',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Michoac�n',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Morelos',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Nayarit',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Nuevo Le�n',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Oaxaca',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Puebla',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Quer�taro',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Quintana Roo',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Sinaloa',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('San Luis Potos',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Sonora',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Tabasco',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Tamaulipas',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Tlaxcala',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Veracruz',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Yucat�n',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Zacatecas',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into EstadoPaises values('Samoa Americana',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into EstadoPaises values('California',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into EstadoPaises values('Colorado',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into EstadoPaises values('Florida',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into EstadoPaises values('Georgia',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into EstadoPaises values('Hawaii',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into EstadoPaises values('Kansas',GETDATE(), GETDATE(), 1, 3, 1, 1);

insert into MedioImpresos values('Peri�dico',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Tabloide',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Revista',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into MedioElectronicos values('Radio',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Televisi�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Internet',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Video',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into Generos values('Entrevista',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Columna',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Art�culo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Comentario',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Mesa de an�lisis',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into Ambitos values('Internacional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Binacional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Nacional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Regional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Estatal',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Local',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoOrganos values('Comisi�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Comit�',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Consejo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Junta',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Subcomit�',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Jurado',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Consorsio',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Red',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Grupo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoPresentaciones values('Presentaci�n de libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPresentaciones values('Presentaci�n de resultados de investigaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPresentaciones values('Pl�ticas',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPresentaciones values('Otra',GETDATE(), GETDATE(), 1, 1, 1);

insert into OtraParticipaciones values('Moderador',GETDATE(), GETDATE(), 1, 1, 1);
insert into OtraParticipaciones values('Comentarista',GETDATE(), GETDATE(), 1, 1, 1);
insert into OtraParticipaciones values('Autor',GETDATE(), GETDATE(), 1, 1, 1);
insert into OtraParticipaciones values('Coordinador',GETDATE(), GETDATE(), 1, 1, 1);
insert into OtraParticipaciones values('Otra',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoDictamenes values('Art�culo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Cap�tulo en libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Proyecto de investigaci�n CONACyT',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoDistinciones values('Reconocimientos',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('Premios',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('Becas para estancias acad�micas',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('C�tedras acad�micas/Patrimoniales',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoEventos values('Congreso',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Conferencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Foro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Seminario',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Taller',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Simposium',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoFinanciamientos values('Fiscal',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Complementario',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Financiamiento externo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Mixto',GETDATE(), GETDATE(), 1, 1, 1);

--Sector = 0
insert into Sectores values('NO ESPECIFICADO', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR GOBIERNO FEDERAL CENTRALIZADO', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR ENTIDADES PARAESTATALES', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR GOBIERNO DE LAS ENTIDADES FEDERATIVAS', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR DE EDUCACION SUPERIOR PUBLICAS', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR DE EDUCACION SUPERIOR PRIVADAS', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR PRIVADO DE EMPRESAS PRODUCTIVAS (ADIAT)', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR DE ENTIDADES NO LUCRATIVAS', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('INSTITUCIONES DEL SECTOR DE ENTIDADES EXTERNAS', 0,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('CONSULTORAS', 0,GETDATE(), GETDATE(), 1, 1, 1);
--Sector economico = 1
insert into Sectores values('Mineria', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Construccion', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Servicios educativos', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Servicios de Salud y asistencia social', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Servicios financieros y de Seguros', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Servicios de esparcimiento culturales y deportivos y otros servicios recreativos', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Servicios de alojamiento temporal y reparacion de alimentos y bebidas', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Otros servicios excepto actividades de gobierno', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Actividades de gobierno y organismos internacionales y extraterritoriales', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Informacion en medios masivos', 1,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Servicos Profesiones cientificos y tecnologicos', 1,GETDATE(), GETDATE(), 1, 1, 1);
--Sector financiamiento = 2
insert into Sectores values('Gobierno federal', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Gobierno estatal', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Gobierno municipal', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Gubernamental binacional', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Fondos CONACyT', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('UC-MEXUS/CONACyT', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Acad�mico interinstitucional', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Fundaciones', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Sociedad Civil Organizada', 2,GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Privado', 2,GETDATE(), GETDATE(), 1, 1, 1);

--Sector 3=Insituciones del Sector entidades paraestatales
insert into Organizaciones values('EL COLEGIO DE MEXICO, A. C.',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('EL COLEGIO DE LA FRONTERA NORTE, A. C.',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('EL COLEGIO DE LA FRONTERA SUR',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('CORPORACION MEXICANA DE INVESTIGACION EN MATERIALES, S. A. DE C. V.',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('ESCUELA NACIONAL DE ANTROPOLOGIA E HISTORIA',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('SECRETARIA DE SALUD',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('SECRETARIA DE EDUCACION Y CULTURA',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('SECRETARIA DE ENERGIA',GETDATE(), GETDATE(), 1, 3, 1, 1);
insert into Organizaciones values('TECNOLOGICO UNIVERSITARIO DE BAJA CALIFORNIA',GETDATE(), GETDATE(), 1, 3, 1, 1);

insert into Departamentos values('Departamento de estudios culturales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de estudios de administraci�n p�blica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de estudios de poblaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de estudios econ�micos',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de estudios sociales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de estudios urbanos y del medio ambiente',GETDATE(), GETDATE(), 1, 1, 1);

insert into Estados values('Activo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Sab�tico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Licencia c/ sueldo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Licencia s/ sueldo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Superaci�n acad�mica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Baja',GETDATE(), GETDATE(), 1, 1, 1);

insert into GradoAcademicos values('Licenciatura',GETDATE(), GETDATE(), 1, 1, 1);
insert into GradoAcademicos values('Maestr�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into GradoAcademicos values('Doctorado',GETDATE(), GETDATE(), 1, 1, 1);

insert into Categorias values('Titular A',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Titular B',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Titular C',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Asociado A',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Asociado B',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Asociado C',GETDATE(), GETDATE(), 1, 1, 1);

insert into Cargos values('Investigador',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Presidente',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Secretario general acad�mico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Secretario general de planeaci�n y desarrollo institucional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director general de vinculaci�n institucional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director general de asuntos acad�micos',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Direccion general regional noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director general de docencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Direccion regional noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director de departamento',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Coordinador de posgrado',GETDATE(), GETDATE(), 1, 1, 1);

insert into SNIs values('No pertenece',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Candidato',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Emerito',GETDATE(), GETDATE(), 1, 1, 1);

insert into Sedes values('Matamoros','Direcci�n general regional noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Nuevo Laredo','Direcci�n general regional noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Piedras Negras','Direcci�n general regional noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Monterrey','Direcci�n general regional noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Ciudad Ju�rez','Direcci�n general regional noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Tijuana','Tijuana',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Mexicali','Direcci�n general regional noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Nogales','Direcci�n general regional noroeste',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoArticulos values('Art�culo con arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoArticulos values('Art�culo sin arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoArticulos values('Art�culo traducido a otro idioma',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoArticulos values('Memoria de Congreso/Ponencia publicada',GETDATE(), GETDATE(), 1, 1, 1);

insert into Indices values('CLASE',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('CONACYT',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('DIALNET',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('ECON-LIT',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('HAPI',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('HLAS',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('IN-RECS',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('ISI',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('JSTOR',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('LATINDEX',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('RedAlyc',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('Otro',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('Sin �ndice',GETDATE(), GETDATE(), 1, 1, 1);

insert into Instituciones values('Universidad Externado de Colombia',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Ayuntamiento de Matamoros',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('DIF Matamoros',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Casa de las Culturas del Mundo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Mexicano de la Juventud',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Universitario de Ciencias Sociales y Humanidades. Universidad de Guadalajara',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto de Investigaciones Jur�dicas de la UNAM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Organizaci�n J�venes Dem�cratas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Producen',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fuerza Aerea de Chile',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a  Plan del Desarrollo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UAM-Iztapalapa',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CEISAL',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UABC MEXICALI',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Nacional Aut�noma de M�xico',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de York',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma Metropolitana - Azcapotzalco',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CREDAL',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SOMDE, CONAPO, CRIM, UNFPA',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Organizaci�n Pol�tica Alemana J�venes Dem�cratas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Veracruzana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Michoacana de San Nicol�s de Hidalgo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Asociaci�n Mexicana de Estudios del Trabajo','Oscar Contreras Montellanos',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Banco Interamericano de Desarrollo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Tecnologico de Piedras Negras',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Tecnol�gica Centroamericana (Honduras)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('The University of Califronia and The COLEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de California',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of East Anglia G.B.',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SOMEE (Sociedad Mexicana de Estudios Electorales)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('REVES 15, Universidad de Guadalajara y COLEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('The University of the Texas at Austin',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Random House Mondadori',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Raya en el Agua',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Culturas Populares del ICBC',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Latin American Studies Association',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Sonora',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Investigaci�n en Alimentaci�n y Desarrollo (CIAD)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UIA-Noroeste, El COLEF, CETYS, DIF- municipal, CSPP, Alliant University Children s Hospital',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Suth western College',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Asociaci�n Latino-Iberoamericana de Gesti�n Tecnol�gica',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Colegio de Michoac�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Planned Parethood, Instituto nacional de la mujer y COLEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Planned parenthood, de San Diego  Instituto estatal de la mujer de BC y COLEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Plan Estrat�gico de Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Estudios Culturales. Museo UABC',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University Galery',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('IMAFED','Secretar�a de Gobernaci�n',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Georgetown University, Washington, DC, Estados Unidos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad La Sapienza, Roma',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Maestr�a en Estudios Latinoamericanos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de Estudios Superiores de Occidente',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico y de Estudios Superiores de Occidente',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('XVII Ayuntamiento de Tijuana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CEPAL-CELADE',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('La Comisi�n de Cooperaci�n Laboral',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Gobierno de Italia',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidada de Guadalajara',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Pedag�gica Nacional',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colegio de M�xico',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Nacional de Salud P�blica',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Red Internacional  de Colaboraci�n en las Ciencias del Comportamiento',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Iberoamericana Noroeste',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Southwestem College',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fundaci�n Mexicana de la Salud',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Zacatecas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Iberoamericana Noroeste en colaboraci�n con El Colef',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto de Investigaciones Dr. Jos� Mar�a Luis Mora',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Organizaci�n de Estados Iberamericanos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Baja California Sur',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Scalabrini House of Theology',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colegio de Tamaulipas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Panamericano de Humanidades',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad del Noreste de M�xico',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Comunitario de Salud Mental de Regla',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Whittir College',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n para Prevenir y Erradicar la Violencia Contra las Mujeres en Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Weatherhead Center Harvard University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Redlands',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de chihuahua',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Sociedad Cubana de Psiquiatr�a',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Foro Migraciones',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universite de Nice-Sophia Antipolis',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto de Administraci�n P�blica del Estado de Quintana Roo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Estudios Universitarios Xochicalco',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n Ciudadana de Derechos Humanos Noroeste A.C.',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a de Salud',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Yucat�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Red Internacional de Investigadores en Ciencias Sociales y Humanas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('ENLACE',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Estudios Superiores del Noroeste',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de la Habana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Interamericano de Estudios de Seguridad Social',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de La Laguna, Tenerife, Espa�a',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Investigacines Biol�gicas del Noroeste',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Trakya University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('San Diego Natural History Museum',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Ense�anza T�cnica y Superior',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Polit�cnico Nacional',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universit� de Poitiers',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colegio de San Luis',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universit� d Orl�ans',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma del Estado de Hidalgo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University San Diego',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Consulado de los Estados Unidos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of Pittsburgh',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Investigaci�n y Estudios Avanzados-IPN',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Complutense de Madrid',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Mil�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Sin Fronteras',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Rey Juan Carlos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Woodrow Wilson Center',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Murcia',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Madrid',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('COLEF-UABC',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('�coles des Hautes �tudes en Sciences Sociales (EHESS). Universit� de Paris, Sorbonne',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fondo de las Naciones Unidas para la Infancia (UNICEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colef, UABC, Universidad de California San Diego, Universidad Estatal de San Diego',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Woodbury University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Latina de Panam�',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n Interamericana de Mujeres',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of Essex',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Seminario Mayor de Nuevo Laredo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Mexicano de Doctrina Social',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Fronterizo de Promoci�n de Derechos Humanos A.C.',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fundaci�n para el Debido Proceso Legal',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Nacional para Tribunales Estatales',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a de Relaciones Exteriores',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n Internacional de L�mites y Aguas entre M�xico y Estados Unidos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Coalici�n Pro Defensa del Migrante',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Michoacana de San Nicol�s Hidalgo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Washington',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Queretaro',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Rural Services Research Institute',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Crist�bal Colon',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n Econ�mica para Am�rica Latina-M�xico',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Institut National de Etude Demogaphiques',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a de la Comisi�n de Poblaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Sin Fronteras, A.C',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Asuntos Migratorios de la LIX Legislatura de la C�mara de Diputados',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of  California, San Diego',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad del Caribe',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Museo de Historia Mexicana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Consejo Nacional para Prevenir la Discriminaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('La Comisi�n Coordinadora y las Instituciones Convocantes',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Sonora, UAS,  UABC, Centro de Investigaci�n en Alimentaci�n y Desarrollo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Deutscher Akademischer Austauschdienst Servicio Alem�n  de Intercambio Acad�mico',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of Skovde',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Nacional de Antropolog�a e Historia',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universitat de Valencia',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Facultad de Psicolog�a Universidad de la Habana','Dr. Dionisio Zaldivar P�rez',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto de Investigaci�n e Inversi�n estrategica del Gobierno de Guanajuato',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Francisco Gavidia',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Referencia Latinoamericano para la Educaci�n Especial',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad UNIVER Noroeste',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Tijuana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universite de Toulouse',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Xochicalco',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Iowa States University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma del Estado de Morelos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Gobierno del Estado de Coahuila',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Medical School',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Red de Salud de las Mujeres Latinoamericanas y del Caribe',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Observatorio Ciudadano del Feminicidio',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Valencia',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Michoacana del Oriente',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Tecnol�gico de Monterrey',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Investigaciones y Estudios Superiores en Antropolog�a Social',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('East Carolina University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Ayuntamiento de Nuevo Laredo','Horacio Garza Garza - Presidente Municipal',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Ayuntamiento de Tijuana','Jos� Guadalupe Osuna Mill�n - Presidente Municipal',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Barton Aschman Associates','Roberto C. Scales',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CECUT','Alfredo Alvarez - Director General',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CESPT','Ismael Grijalba Palomino - Director General',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CICESE','Mario Mart�nez Garc�a - Director General',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CIESAS','Dr. Ra�l Loyola D�az  - Director General, Lic. Araceli Mercado','relinst@juarez.ciesas.edu.mx',GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CNIME','Humberto Inzunza Fonseca - Presidente','hinzunza@telnor.net',GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('COLMEX','Andr�s Lira Gonz�lez - Presidente',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CONACYT','Jaime Martuscelli Quintana - Director Adjunto de Investigaci�n Cient�fica y Secretario Ejecutivo Sup',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SIREYES','H�ctor Menchaca Sol�s',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CONAGUA','Ing. Guillermo Villalobos - Director General',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CONAPO','Rosa Mar�a Ruvalcaba - Directora General de Estudios de Poblaci�n',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('COPARMEX','Pedro Mat�n Briones - Presidente',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CUT','Jes�s J. Ruiz Barraza - Presidente',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('FLACSO-Guatemala','Dr. Ren� Eduardo Poitevin - Director',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Ford Foundation','No tiene',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('FOSIMAC','Mart�n L. Celaya Barragan - Secretario T�cnico',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('FOSIREYES','H�ctor Menchaca Sol�s',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('FOSIVILLA','Eduardo Hurtado Garc�a - Secretario T�cnico',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fundaci�n Friedrich Ebert','Lic. Ekart Wild - Representante',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Gobierno del Estado SCT','H�ctor Ter�n Ter�n - Gobernador Constitucional de B. C.',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Gobierno del Estado de Chihuahua','Jes�s M. Sandoval Armenta - Director General de Fomento Econ�mico',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Federal Electoral','Jos� Woldenberg Karakosky - Consejero Presidente',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('INEGI','Carlos M. Jarque - Presidente',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de la Paz','M.C. Marcelino Bauza Rosete - Director',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('ITPN','V�ctor Manuel Ibarra Balderas - Director',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('ISSSTE','Lic. Olimpia Talla Jim�nez',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Medicina Social Comunitaria','Blanca Lomel� - Directora',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('New Mexico State University','William Conroy - Presidente',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SEMARNAP','No tiene',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Nacional de Ecolog�a','Miguel Anguel Cancino Aguilar',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SDSU','Nancy A. Marlin - Provost and Vicepresidente of Academic Affaris',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SEBS','M.C. Lorenzo G�mez Mor�n - Secretario',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SEDESOL','Lic. Mario Palma Rojo - Subsecretario de Desarrollo Regional',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SRE','Embajador Jorge Alberto Lozoya - Director Ejecutivo',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('STPS','Lic. Humberto Lugo Gil - Oficial Mayor',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SOMEDE','Carlos Welti',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('TAMIU','J. Charles Jennet - President',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UABC','H�ctor Everaldo Beltr�n Corona - Rector',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Coahuila','No tiene',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UABCS','Jorge Alberto Vale S�nchez - Rector',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Colima','Carlos Salazar Silva - Rector',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Autonoma Metropolitana Iztapalapa','Ter�n Casa Nueva - Rector',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UIA - Noroeste','Humberto Barquera G�mez - Apoderado',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('WWU','Johm O. Stubbs - President and Vice Chancellor',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SFU','Johm O. Stubbs - Presidente and Vice Chancellor',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Nacional de Migraci�n','No tiene',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretaria de Comercio','Jose Perez','jperez@sc.com',GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Guadalajara',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('S.E.P.',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CREA',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Guadalajara',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('XIII Ayuntamiento de Mexicali',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fondo de Cultura Econ�mica',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Miguel �ngel Porr�a',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UNAM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colmex',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a del Trabajo y Previsi�n Social',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Consejo Nacional de Poblaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Asociac�n Latinoamericana de Sociolog�a',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('ORSTOM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Consejo Estatal de Poblaci�n de Oaxaca',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('ITESO',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Chicana/Latina Research Center-UCD',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Plaza y Valdez',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Iberoamericana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Programa Cultural de las Fronteras',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Conaculta',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('IRD',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Wisconsin','Alberto Palloni',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Iberomericana Santa F�',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Consorcio transfronterizo de investigaci�n en Acci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de investigaci�n y Docencia Econ�mica',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of Texas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fundaci�n Rockefeler',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fondo Nacional para la Cultura y las Artes',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Procuradur�a Federal de Protecci�n al Ambiente',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Consejo de Desarrollo Econ�mico de Tijuana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Organizaci�n Panamericana de la Salud Ely Lilly',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Programa Interdisciplinario de Estudios de la Mujer (PIEM)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fundaci�n Mac Arthur',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a de Gobernaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UC Mexus',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SAHOPE',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of Southern California',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n de Cooperaci�n Ambiental M�xico-Estados Unidos',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Sistema de Investigaci�n Francisco Villa',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n de Cooperaci�n Econ�mica Fronteriza (COCEF)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Organizaci�n Franco y Asociados',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Municipio de Juarez, Chihuahua',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Junta Municipal de Agua y Saneamiento',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SIMAC',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of California, in Santa Cruz, Ca.',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Parsons Transportation Group','Thomas E. Barron',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Colegio de Postgraduados',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('COESPO-GUANAJUATO','DR. LUIS FERNANDO MACIAS GARCIA',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('HEWLETT FOUNDATION',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('USC',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('AIDS RESEARCH PROGRAM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('USAID',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colef',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n de Cooperaci�n Ecologica',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('The Border Studies Program',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a de Energ�a de la Federaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Institut De Recherche Pour Le Development',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Compton Foundation',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('San Diego State University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('International Community Foundation',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('COESPO ( SONORA )',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Baker & Associates, energy Consultants',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Nacional de Nutrici�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CDT de Tecate',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fundaci�n El Colef',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Municipio de San Pedro Garza Garcia Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colegio Mexiquense','Iracheta Cenecorta Alfonso Xavier',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Mexicano de Seguro Social','David Ontiveros',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Environmental Resources Management',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Camp Dresser & Mckee Inc.',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fideicomiso','Ramiro Moreno Navarro',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Subsecretaria de asuntos religiosos en la Sec. de Gobernaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('SEMPRA ENERGY MEXICO',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Dir. Gral. Finanzas del Gobierno de Chihuahua',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Estatal de Michigan','Scott Whiteford',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Mexicano del Seguro Social','David Ontiveros',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Cuentas Bancarias','Ramiro Moreno Navarro',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('FLACSO - MEXICO',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico y de Estudios Superiores de Monterrey',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Tecnol�gica de Matamoros',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Universitario del Noreste',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Municipal de Planeaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Comisi�n para Asuntos de la Frontera Norte',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Archivo General del Estado de Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Texas El Paso',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UAM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a de Desarrollo Urbano y Obras P�blicas del Gobierno del Estado de Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Consejo Estatal de Poblaci�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CONARTE',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Otro',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('International Community Foundation San Diego, Ca.','Richard Kiy',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto de Cultura de Baja California',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Southwestern College',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Pacific Sociological association',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('ITAM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Autonoma de Sinaloa',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('St Josephs Inivercity',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Loyola Marymount University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fairfiled University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('LaSalle University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('John Carrol University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Monterrey',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colegio de Michoac�n',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Tamaulipas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de Nuevo Laredo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Interamericana del Norte',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Museo Casamata',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Investigaci�n en Materiales Avanzados (CIMAV)','David R�os Jara',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('St. Josephs University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Layola College',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University  of Notre Dame',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Institut Natinal Du Travail de Emploi et de la formation professionnelle',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma Metropolitana-Xochimilco',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Gabriel Zzekely S�nchez',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Quitar Juarez',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Banco de M�xico',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CIAD',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Autonoma del Estado de M�xico',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('INESER',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('El Colegio de Sonora',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Guanajuato',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('nada tijuana',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro Regional de Investigaci�n Multidisciplinaria CRIM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Puebla (UAP)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('INSP',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('INSAD',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Estudios M�xico- Estados Unidos','Universidad de California en San Diego',null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto de Altos Estudios Internacionales',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Escuela Nacional de Antropolog�a e Historia. Unidad Chihuahua',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Casa del Migrante en Tijuana, Centro Scalabrini',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Colegio de Michoacan',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Planned parethood, Instituto estatal de la mujer  de BC y COLEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Baja California',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CIDE',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Tijuana Trabaja',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de San Francisco',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Planned parethood de San Diego, Instituto estatal de la mujer de BC y COLEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Hosei University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CREDAL, COLEF e ITESM',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Grupo Editorial EON',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Auton�ma Agraria Antonio Narro (UAAAN)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('University of California, San Diego (UCSD)',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('The University of California',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('The University of California and El Colegio de la Frontera Norte',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Estatal de San Diego',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Red nacional  de colaboraci�n en las ciencias del comportamiento',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('CETYS-Universidad',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Sinaloa',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Barcelona',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Plaza & Jan�s',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('IMAC',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Escuela Normal Fronteriza',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('INSITE',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Department of chicana chicano studies',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Harvard University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UPN',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto Nacional de Desarrollo Social',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('UABC Ensenada',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Secretar�a de Desarrollo Social',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad de Guadalajara y El COLEF',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Fondo Poblacional de Naciones Unidas',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Universidad Aut�noma Metropolitana-Iztapalapa',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Centro de Estudios Estrat�gicos para el Desarrollo',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('COLEF - CICESE',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Instituto de la Mujer para el Estado de Baja California',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);
insert into Instituciones values('Arizona State University',null,null,GETDATE(), GETDATE(), 1, null, 1, 1);

insert into TipoParticipaciones values('Ponente',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Conferencia magistral',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Poster',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Comentarista',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Moderador',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Coordinador de mesa',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Organizador',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Co-organizador',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Presentaci�n de libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoActividades values('Investigaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoActividades values('Docencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoActividades values('Vinculaci�n',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoCapitulos values('Cap�tulo con arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoCapitulos values('Cap�tulo sin arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoCapitulos values('Cap�tulo traducido a otro idioma',GETDATE(), GETDATE(), 1, 1, 1);
  
insert into FormaParticipaciones values('Editor',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormaParticipaciones values('Compilador',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormaParticipaciones values('Coordinador',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoParticipantes values('Persona f�sica',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipantes values('Investigador',GETDATE(), GETDATE(), 1, 1, 1);

insert into InvestigadorExternos values('Acevedo Gladys', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Aceves Calder�n Patricia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Adolfo S�nchez Rebolledo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Adrian de Le�n Arias', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Adriana Ch�vez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('AGERWALD VINOD', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Aguilar Barajas Ismael', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Aguilar Ismael', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Aguilar Villanueva Luis Fernando', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Agust�n S�ndez P�rez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alan R. Sweedler', null, 'Acting Assitant Vice President for  International Programs', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('ALARC�N DIANA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Albert Berry', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alberto Palloni', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alberto Palloni', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Albornoz Liliana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alegre Lisette', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alejandro Canales Cer�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alejandro Cervantes Carson', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alejandro Diaz Bautista', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alejandro Mungaray', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alejandro Rodr�guez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('ALFONSO DIAZ JIMENEZ', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alfonso Macias Laylle', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alfredo Alvarez', null, 'Director General', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alfredo Lattes', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alfredo Limas Hern�ndez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alicia Maguid', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alicia Ziccandi', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Allen Jedicka', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Alma Rodr�guez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('�lvarez de la Torre Guillermo Benjamin', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Amelia Malagamba', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('AMEZCUA M.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Amorim M�nica', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Amuedo Dorantes Catalino', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ana Celia Zentella', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ana Leticia Salcedo Rocha', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ana Luz Torres Mart�nez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ana Mar�a L�pez Salas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ana Mart�nez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Andrea Revueltas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Andr�s Lira Gonz�lez', null, 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Andr�s Tornos Cubillo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Angel L�pez L�pez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Angel Ronald', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Angela Renee De la Torre Castellanos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Anne Runyan', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Aparicio Mijares Francisco Javier', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Araceli Mercado', 'relinst@juarez.ciesas.edu.mx', null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Aralia L�pez Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Arreola Hern�ndez Francisco', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Arroyo Maga�a Wendy', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Arturo Lara', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Atsuko Tanabe', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ayll�n Trujillo Mar�a Teresa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Azizur R. Khan', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Balbuena Ra�l', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Banda Gustavo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Baptista Ra�l', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('B�rbara A. Driscoll', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Basilia Valenzuela V.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Basilio Verduzco Ch�vez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('BASSOLS MARIO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Baudasse Thierry', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Benitez Ra�l', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ben�tez Ra�l', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bens�nsan Graciela', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bergareche Ana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bernal Guillermo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bernard Bauer O.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bernardo de Jes�s Salda�a T�llez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bernardo Flores B�ez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bernardo Gonz�lez Ar�chiga', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bernardo Romero V�zquez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Blackwell Maylei', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Blanca Acedo', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Blanca Lomel�', null, 'Directora', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Blanca Rodr�guez', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Brodine Stephanie', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Brown Christopher', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Brown-Gort Allert', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Brugeilles Carole', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Brusati Annalisa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bullock Stephen', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('BUNCLE KARIN', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Bustelo Ruesta Mar�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Caballero Ortega Heriberto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cabrero Enrique', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cadena Magdalena', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Calder�n Chelius Leticia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cald�ron Segura Esther', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Camacho Gonzalo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('CAMERON MAXWELL', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Campos Marcia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Canales Ceron Alejandro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ca�edo Solares Irma', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cant� Mart�nez Pedro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cappello H�ctor', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cardona Antonio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carla Pederzini', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carlos Graizbord', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carlos Guti�rrez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carlos M. Jarque', null, 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carlos Salazar Silva', null, 'Rector', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carlos Silva', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carlos Welti', null, 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carole Brugeilles', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Carrillo Arturo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('CASASOLA S.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('CASTILLO DEBRA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('CASTILLO MANUEL �NGEL', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Castillo Octelina', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Castro Ceiro Teresa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Castro Teresa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Catalina Denman', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('C�zares Rivera Enrique', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cejudo Guillermo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Celaya Tentori Minerva', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cerutti Mario', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cesar Alfredo Olivas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('C�sar Ben�tez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('C�sar Gonz�lez Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Chavez Ana Mar�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ch�vez Galindo Ana Mar�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ch�vez Mauricio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Christian Zlolnisky Palacios', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Christopher Brown', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Claudia Sandoval', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Claudio Mauricio Stern Feiter', null, 'INSTITUCION OMS', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Claudio Mauricio Stern Feitler', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Clemente Ruiz Dur�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Clemente Z��iga', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Concepci�n Mart�nez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Conde Carlos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Conde Gonz�lez Carlos Jes�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Conde Zambada Gilberto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('CONTRERAS OSCAR', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cordera Campos Rolando', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('C�rdova Plaza Ros�o', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cornelius Wayne', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Corona Paez Sergio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Corral Osuna Beatriz', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Corral Rafael', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cosio Mar�a Eugenia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cosio-Zavala Mar�a Eugenia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('COUTIGNO RAM�REZ ANA CLAUDIA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cristina Ocampo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cruz Norma', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Cuauht�moc Calder�n Villarreal', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Dae Won Choi', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Daniel Delaunay', null, 'No tiene', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Daniel Delaunay', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Daniel Hernandez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Daniel Venegas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Daniel� Joly', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('David Ontiveros', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('David Pepper', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('David Runsten', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('David Runsten Ru�z Clemente', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('David Schauer', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('David Sroaf', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('D�vila Alejandro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('de la O Mar�a Eugenia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('de la Torre Rodolfo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('De Lucas Javier', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('de Oliveira Orlandina', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('de Oliveira Orlando', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Dennis L. Soden', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Diana Alarc�n Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Djamel Toudert', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Dom�nguez Santos Rufino E.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Dr. J.C. Agunwamba', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Duane G. Metzger', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Durand Jorge', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Echarri Canovas Carlos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Edm� Dom�nguez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Eduardo Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Eduardo Hurtado Garc�a', null, 'Secretario T�cnico', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Eduardo L�pez', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Eduardo Marg�in', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Eduardo Zepeda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Edward Brown', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ekart Wild', null, 'Representante de la Fundaci�n Friedrich Ebert', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Elena Bilbao', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Elena Urrutia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Eliseo Mendoza Berrueto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Elizabeth Ju�rez Cerdi', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Embajador Jorge Alberto Lozoya', null, 'Director Ejecutivo', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Emeterio Mart�nez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Enrique Dussel', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Enrique Hern�ndez Laos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Enrique Luengo Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('ENUAU EMILIO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ernesto J�uregui', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('ESCAND�N JULIO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Escobar Diego', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Escobar Latap� Agust�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Espejel Carbajal Martha Ileana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Espinosa Dami�n Gisela', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Espinoza Morales Lydia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Est�vez Federico', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Estrella Gabriel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Evan Ward', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('EZCURRA E. EDUARDO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('EZCURRA EXEQUIEL', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('F. V�zquez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fabiola Vargas Valencia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Farf�n Morales Olimpia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Farley Kathleen A.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Favret Rita', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Feas Roger', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Felipe Cuamea Vel�zquez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('F�lix Arredondo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('F�lix Verduzco Gustavo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fernado Lozano Ascencio', null, 'Coordinador', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fernando Lozano Ascencio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ferreira Lu�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Few Roger', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Figueroa Juan Guillermo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fitzpatrik Jody', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Flamand G�mez Laura', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Flavio Alonso Rosales D�az', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fletes Oc�n Hector Bernab�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Flores Aubanel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Flores Simental Ra�l', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Flores Torres Oscar', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fouquet Guerineau Anne', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Francisco A. Bernal Rodr�guez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Francisco Fern�ndez de Castro Santos', null, 'Director Adjunto de Administraci�n y Finanzas', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Francisco Malagamba', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Francisco Miranda L�pez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Franco Mar�a del Carmen', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Francoise Lestage', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fray Cruzalta Aguirre Juli�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Fullerton Tom', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gabriel Estrella', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gabriela Adriana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gabriela Dutr�nit', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('G�mez Mois�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('GARC�A  BRIGIDA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a  Galvan Alejandro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('GARC�A DE ALBA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a del Castillo Rodolfo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('GARC�A GERARDO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('GARC�A J.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a L�pez Patricia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a Martha', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a Mart�nez Bernardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a Miriam', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a P�ez Benjam�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a P�rez Hilda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a y Griego Manuel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garc�a Zamora Rodolfo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Garda Roberto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gardea Torresdey Jorge', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gary Gereffi', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gaxiola Aldama Ruth', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gerardo Ch�vez Velazco', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gerardo Jacobs', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gerardo Otero', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('GERBER JAMES', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gereffy Gary', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gilberto Gim�nez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Giorguli Silvia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gloria Elizabeth Garc�a Hern�ndez', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Cesar', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez C�sar', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Corona Rosa Mar�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Fagoaga Eduardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Igael', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('GONZ�LEZ ISRAEL', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Leyva Sergio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Ma�z Roc�o', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Quiroga Miguel A.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Quiroga Miguel �ngel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Quir�ga Miguel �ngel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('GONZ�LEZ RITA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez Rosa Mar�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gonz�lez-Ar�chiga Bernardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gracida Romo Juan Jos�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Graciela Bensunsan', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Graizbord Boris', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Grajeda Leilanie', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Green Stanley', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Grijalva Gabriela', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Guadalupe Ortega Villa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gudarrama Roc�o', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Guevara Ivonne', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Guido Pinto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Guillermo Villalobos', null, 'Director General', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gustavo de J. Bravo Castillo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Gustavo Garza', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Guti�rrez Arturo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Guti�rrez Luis Miguel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('H�ctor Everardo Beltr�n Corona', null, 'Rector', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('H�ctor Menchaca Sol�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('H�ctor Padilla', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('H�ctor Ter�n Ter�n', null, 'Gobernador Constitucional de B.C.', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�n Ahuja', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�ndez Cabrera Porfirio M.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�ndez David', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�ndez Gonzalo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�ndez Hilda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�ndez Juan M.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('HERNANDEZ MADRID MIGUEL', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�ndez Mar�a del Carmen', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hern�ndez Ramiro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Herrera Barrientos Jaime', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('HERRERA J.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Herrera Montes Salvador', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('HERRERA P�REZ OCTAVIO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('HINOJOSA R.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hip�lito Rodr�guez Herrero', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Horacio Garza Graza', null, 'Presidente Municipal', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Hovell Melbourne F.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Howell Melbourne F.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Humberto Barquera G�mez', null, 'Apoderado', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Humberto Gonz�lez Galb�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Humberto Inzunza Fonseca', 'hinzunza@telnor.net', 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Humberto Lugo Gil', null, 'Oficial Mayor', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Igor Israel Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('IGOR JOS�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ilescas Vela Virginia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Il�ana Sonntag', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('In�s Favela', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('IRACHETA ALFONSO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Irazuzta Di Chiara Ignacio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Islas Yadira', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ismael Aguilar Barajas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ismael Grijalba Palomino', null, 'Director General', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ismael Mart�nez Garc�a', null, 'Director General', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Itzel Magali Perez Zagal', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('IVAN55', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Izquierdo Antonio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('J. Charles Jennet', null, 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('J. M. Robine', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jaime Hererra Barrientos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jaime Martuscelli Quintana', null, 'Director Adjunto de Investigaci�n Cient�fica y Secretario Ejecutivo Suplente de Fondos', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jalette Patrice', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('James Gerber', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Janice Monk', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('J�quez Gabriel Rom�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Javier Landa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Javier Monk', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jean Daniel M. Saphores', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jean Papail', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('JENKINS  RHYS', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jesus', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jes�s Arroyo Alejandre', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jes�s J. Ruiz Barraza', null, 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jes�s M. Sandoval Armenta', null, 'Director General de Fomento Econ�mico', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jes�s Moises Beltr�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jes�s Rom�n Calleros', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Joel Jennings', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Johm O. Stubbs', null, 'President and Vice Chancellor', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('John Cross', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Alberto Vale S�nchez', null, 'Rector', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Alonso S�nchez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Antonio Hern�ndez Plascencia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Castro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Deantes del �ngel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Durand', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Eduardo Mendoza Cota', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('JORGE ENRRIQUE CASTRO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Gil', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jorge Herrera', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Alejandro Garc�a Galv�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Arturo P�rez S�nchez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Carlos Lozano', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Carlos Ram�rez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Guadalupe Osuna Mill�n', null, 'Presidente Municipal', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Guerrero Guerrero', null, 'Director General', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Javier Robles', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Luis Aranda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Luis Contreras', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Luis Garc�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Luis Molina Hern�ndez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Luis Trava Manzanilla', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Mar�a Parra Ramos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Molina Ru�z', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jos� Woldenberg Karakosky', null, 'Consejero Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Joseph Devinny', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Juan Antonio Legaspi Delgado', null, 'Director General de Seguridad e Higiene', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Juan Carlos Herguera', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Juan Pablo Guerro', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Julie Stanton', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Julio Boltvinik', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Jusidman Clara', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Karina Orozco Rocha', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Karla Gallo Campos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Katherine Side', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kathryn A. Woolard', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kathryn Kopinak', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kay Eekhoff', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kazuko Shiraishi', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('KENNEY MARTIN', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('KERR BILL', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kosacoff Bernardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kristin Espinoza', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kuhner Gretchen', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kumar Acharya Arun', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Kumar Arun', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('L. L. Guti�rrez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('L. Reyes', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Laniado Rafael', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lara Cisneros Gerardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lara Francisco', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lara Gerardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('LATTES ALFREDO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Laura Ochoa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Leite Moreira Am�rico Carlos Am�rico', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lejano Raul', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Leobardo Jim�nez S�nchez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Le�n Ledesma Miguel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('L�on Ledesma Miguel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lestage Francoise', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Leticia Calder�n Chelius', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Leyva Claudia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Leyva Osvaldo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Leyva Ren�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ligia Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('List Reyes Mauricio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('L�pez Castro Gustavo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('L�pez L�pez �lvaro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('L�pez Mar�a de la Paz', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('L�pez Vladimir', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lorenzo G�mez Mor�n', null, 'Secretario', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lourdes Nieblas Cuevas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Lourdes Pacheco', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Loza Gloria Mar�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luengas Rub�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('LUGO SONIA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luis Antonio Miranda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luis E. Calder�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luis Mier', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luis Miguel Gutierrez Robledo', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luis Miguel Morales', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luis Miguel Rionda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luis Miguel Rionda Mart�nez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luj�n Ponce Noem�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Luna Past�n H�ctor', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mac�as Luis Fernando', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mac�as Marie-Carmen', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Maldonado Vasquez Centolino', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Manuel Angel Castillo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Manuel Arroyo Galv�n', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Manuel Chavez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Manuel Ch�vez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Manuel Guti�rrez Vidal', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Manuel Villa Issa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Marcelino Bauza Rosete', null, 'Director', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Marco Antonio Samaniego L.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a Antonieta Robles', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a Cristina Guti�rrez Z��iga', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Maria de los Angeles Pozas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a de los �ngeles Pozas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a de Lourdes Ampudia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Maria de Lourdes Camarena Ojinaga', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a del Carmen Garc�a Pe�a', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a del Rosario Cota Ya�ez Cota', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MARIA ELENA REYES', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a Eugenia Cosio-Zavala', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a Eugenia de la O', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a Eugenia Trevi�o', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mar�a Jos� Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Maria Luisa Erranti', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Marianne Marchand', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mariano Norzagaray Campos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Marina Ariza', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mario Alberto Maga�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MARIO ALBERTO ROSAS', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mario Alberto Rosas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mario Bassols', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mario Bassols Ricardez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mario Lungo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mario Mart�nez Garc�a', null, 'Director General', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mario Palma Rojo', null, 'Subsecretario de Desarrollo Regional', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Markides Kiriakos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Marlene Sol�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('M�rquez Yanod', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Marta Torres', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�n de la Rosa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Martin Kenney', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�n L. Celaya Barragan', null, 'Secretario T�cnico', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�nez Alejandra', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�nez Corona Francisco Javier', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�nez Cristina', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Martinez Donate Ana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�nez Donate Ana, Sipan,  C y  Jos� Luis Izazola', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MART�NEZ FRANCISCO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�nez Lucas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mart�nez Mart�nez Alejandro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mary Alcocer', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mary Carmen Villeda Santana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mary I. O Connor', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mat�nez Mart�nez Alejendro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Max J. Castro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('May Rela�o Pastor', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mayo Murrieta', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Medina Alejandra', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Medina Patricia Eugenia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Meghnad Desai', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MEHTA KALA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mej�a Arango Silvia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Melbourne Hovell', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MEL� PATRICE', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Melgar Mayra Patricia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('M�ndez Alma Ivonne', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mendez Eloy', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('M�ndez Reyes Jes�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mercado Alfonso', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Michael R. Pfau', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Michel Peraldi', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MIDDLEBROOK KEVIN', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Miguel �ngel Ram�rez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Miguel Anguel Cancino Aguilar', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MIguel Cervera Flores', null, 'Director General de Estad�stica', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Miguel Jes�s Hern�ndez Madrid', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Miguel Le�n P�rez', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MINES RICHARD', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MIRNA SASTR�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Moguel Reyna', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mohar Alejandro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mois�s Gamez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Molina Garc�a Mario', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('M�nica Gendreau', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('M�nica Jasis Silberg', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Monterrubio Cordero Juan C.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MOORE C.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Moreno David', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Moreno Jaimes Carlos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Moreno Jos� Luis', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Moreno Mena Jos�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('MURRIETA MAYO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Mwangi wa Githinji', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nadia Cadia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nancy A. Marlin', null, 'Provost and Vicepresident of Academic Affaris', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nancy Grey Posfero', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nancy Lowery', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Natalia Ribas Mateos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nava Isalia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Navarrete Sergio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Neves Nogueira Paula Cristina', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nieblas Ortiz Efra�n Carlos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Noem� Ehrenfeld L.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nombre', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Norma Iglesias', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Norris Clement', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nu�ez Guillermo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('N��ez Leopoldo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Nuno Mar�a Rosa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ochoa D�vila Enrique', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ochoa Enrique', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ochoa Mar�n Sandra Catalina', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ofelia Woo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Olimpia Talia Jimen�z', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Olivia Ruiz', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Olvera Jos� Juan', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ortiz Alegr�a Luz Belinda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ortiz Luis', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ortiz Rafael', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Oscar Contreras Montellano', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Oscar Fern�ndez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Oscar Pedrin Osuna', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ovidio Gonz�lez G�mez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pablo Cotler', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pablo Serrano Vallejo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pablo Vila', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pacheco Edith', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Padilla Delgado H�ctor', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('PADILLA H�CTOR', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Palacios Hern�ndez Lylia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Palloni Alberto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Parra Avila Juan', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Parson Jason G.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Partida Busch Virgilio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pat Mac Dermott', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Patrice Mele', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Patricia Fern�ndez Ham', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Patricio Cardoso Ruiz', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Paul Ganster', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pedraza Laura', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pedro Cital', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pedro Mart�nez Briones', null, 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pe�a Medina Sergio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Penagos Sergio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Peralta Videa Jos� Ram�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Peredo Quezada Mar�a Isabel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pereira de Melo Mar�a Cristina', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('P�rez Patricia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pineda Pablos Nicol�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('POOM MEDINA JUAN', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Portillo Jos� Antonio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Pozas Mar�a de los Angeles', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Prieto Gonz�lez Jos� Manuel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Provencio Enrique', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Puar Jasbir', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('R. Wong', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rafael P�rez-Abreu', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ram�rez L�pez Berenice', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ram�rez Miguel �ngel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ram�n Eduardo Ru�z', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ramos Mar�a Elena', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ramos Salvador', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ra�l Fern�ndez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ra�l Hinojosa', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ra�l Loyola D�az', null, 'Director General', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ren� Eduardo Poitevin', null, 'Director', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ren� Zenteno', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ricardo Silva Toledo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ricardo Trejo Hern�ndez', null, 'Director General de Programaci�n y Presupuesto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Richard Gordon', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Richard Hofstetter', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Richard Wright', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Richardson Chad', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rick Miner', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rivas Eva', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rivas Sada Eva', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Robert Alvarez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Robert C. Scales', null, 'Asesor�a, coordinaci�n y dise�o del Sistema de Informaci�n Integral de la Secretar�a P�blica', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Roberto Rivera Carmona', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Roberto S�nchez Rodr�guez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Roberto Verdugo D�az', null, 'Director de Educaci�n Superior e Investigaci�n', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Robles Ortega Rosalba', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Roc�o Barajas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rodolfo Garc�a', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rodrigo Pimental Lastra', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rodr�guez Francisco', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rodr�guez Yosu', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rolando Cordera Campos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rom�n Artuto R.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rom�n Gabriela', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Romero Hernandez Odilia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Romero Navarrete Lourdes Magdalena', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ronald Angel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ros Jaime', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rosa Linda Fregoso', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rosa Mar�a Gonz�lez Corona', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rosa Mar�a Ruvalcaba', null, 'Directora de Poblaci�n', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rosalba Casas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rosalina Cano Garc�a', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rosas Karina', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Rossana Reguillo Cruz', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('RUBEL A.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ru�z Marco A.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ryoshiro Baba', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('SALAS JOS� LUIS', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Salazar Mario', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Salazar Vidal', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Salda�a T�llez Bernardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Salguero Frin�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Salinas Patti', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Samuel Schmidt', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('S�nchez Adri�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('S�nchez Crisp�n �lvaro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('S�nchez Juan Carlos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('S�nchez Martha', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Santacruz de Le�n Germ�n', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Saphores Jean Daniel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sassen Saskia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Scott Whiteford', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Selee Andrew', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Senen Cecilia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sereseres Cesar A.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sergio Ram�rez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sergio Sol�s', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sergio Zendejas Romero', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Shawn Kanaupuni', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sheridan Cecilia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Shibata Harumi', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Silvia Guendelman', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Simonett Helena', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Socorro Arzaluz', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Soledad Gonz�lez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sol�s Gilberto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Solis Patricio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sonia Baires', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sonia Lugo Morones', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sophie Bava', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('SPARROW GLEN', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Stephanie Pincetl', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Steve Wallace', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Strathdee Steffanie', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Stuart Aitken', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sueli Ramos', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Susan Gzesh', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Susana Pastrana Corral', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Susanne Jonas', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Swanie Potot', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Sylvie Mazzela', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Takeyuki Tsuda', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tel�sforo Ram�rez', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tellez Edward', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tello Pe�n Jorge', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('T�ran Casanueva', null, 'Rector', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Teresa Montero', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Terry McKinley', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Teruel Graciela', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Theodore H. Cohn', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Thomas J. Kelly', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Thomas M. Fullerton', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tintos Juan', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tipa Nadia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tons H. Hilker', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('TORRES GABRIEL', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Torres Jos� Luis', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Torres Oscar', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Torres Victor', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tovar Esquivel Enrique', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Trejo Pe�a Alma Paola', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('TREVI�O RODR�GUEZ MAR�A EUGENIA', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Tridib Banerjee', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Trujillo Joel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vald�s Alma Victoria', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vald�s Carlos Manuel', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Valencia Armas Alberto', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Valent�n Vargas Arenal', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Van Broeck Anne Marie', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Van der Knaap Peter', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('VAN DOOREN ROBINE', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('VAN TULDER R.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vargas Adriana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vargas Fabiola', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vargas Villavicencio Jos� Antonio', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vazquez Sandrin German', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vendrell Ferr� Joan', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('V�ronique Manry', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('V�ctor Gabriel Muro', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('V�ctor Klagsbrunn', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('V�ctor Manuel Ibarra Balderas', null, 'Director', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('V�ctor Ra�l Mart�nez V.', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('V�ctor Zu�iga', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Vidaurr�zaga Ren�', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Villalobos Iliana', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Villarreal Mar�a Elena', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Wallace Steve', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('William Conroy', null, 'Presidente', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Wong Pablo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Wong Rebeca', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Wright Robert', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Yamile Mizrahi', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Yolanda Palma', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Yrizar Guillermo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Yuridia Rodr�guez', null, 'Participa en proyecto', GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Zamudio Patricia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Zapico Go�i Eduardo', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Zavala de Cosio Mar�a Eugenia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('ZEPEDA EDUARDO', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Ziccardi Alicia', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Zuniga Gil Clemente', null, null, GETDATE(), GETDATE(), 1, 1, 1)
insert into InvestigadorExternos values('Z��iga Gonz�lez V�ctor', null, null, GETDATE(), GETDATE(), 1, 1, 1)

insert into Idiomas values('Alban�s', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('Alem�n', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('Am�rico', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('�rabe', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Aragon�s', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Arameo', GETDATE(), GETDATE(), 1, 1, 1)     
insert into Idiomas values('Balin�s', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Bengal�', GETDATE(), GETDATE(), 1, 1, 1)      
insert into Idiomas values('Birmano', GETDATE(), GETDATE(), 1, 1, 1)      
insert into Idiomas values('Bosnio', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('B�lgaro', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Camboyano', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Canton�s', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Catal�n', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Checo', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Chino', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Coreano', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Croata', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Dan�s', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Escoc�s', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Eslovaco', GETDATE(), GETDATE(), 1, 1, 1)        
insert into Idiomas values('Esloveno', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Espa�ol', GETDATE(), GETDATE(), 1, 1, 1)        
insert into Idiomas values('Estonio', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Fero�s', GETDATE(), GETDATE(), 1, 1, 1)                
insert into Idiomas values('Fin�s', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Flamenco', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Franc�s', GETDATE(), GETDATE(), 1, 1, 1)              
insert into Idiomas values('Gallego', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Gal�s', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Griego', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Groenland�s', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('G�tico', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Hawaiano', GETDATE(), GETDATE(), 1, 1, 1)              
insert into Idiomas values('Hebreo', GETDATE(), GETDATE(), 1, 1, 1)                
insert into Idiomas values('Hindi', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('H�ngaro', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Indonesio', GETDATE(), GETDATE(), 1, 1, 1)          
insert into Idiomas values('Ingl�s', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Irland�s', GETDATE(), GETDATE(), 1, 1, 1)   
insert into Idiomas values('Island�s', GETDATE(), GETDATE(), 1, 1, 1)                    
insert into Idiomas values('Italiano', GETDATE(), GETDATE(), 1, 1, 1)           
insert into Idiomas values('Japon�s', GETDATE(), GETDATE(), 1, 1, 1)          
insert into Idiomas values('Javan�s', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Lacand�n', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Lao', GETDATE(), GETDATE(), 1, 1, 1)        
insert into Idiomas values('Lat�n', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Let�n', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Limburgu�s', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('Lituano', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('Lombardo', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('Luganda', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Luvenda', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Luxemburgu�s', GETDATE(), GETDATE(), 1, 1, 1)     
insert into Idiomas values('N�huatl', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Persa', GETDATE(), GETDATE(), 1, 1, 1)      
insert into Idiomas values('Polaco', GETDATE(), GETDATE(), 1, 1, 1)      
insert into Idiomas values('Portugu�s', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Romanche', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Roman�', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Rumano', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Ruso', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Samoano', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Serbio', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Serbocroata', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Sueco', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Sumerio', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Tagalo', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Tahitiano', GETDATE(), GETDATE(), 1, 1, 1)        
insert into Idiomas values('Tailand�s', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Telug�', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Tongano', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Turco', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Ucraniano', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Urdu', GETDATE(), GETDATE(), 1, 1, 1)              
insert into Idiomas values('Veneciano', GETDATE(), GETDATE(), 1, 1, 1)                
insert into Idiomas values('Vietnamita', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Yue', GETDATE(), GETDATE(), 1, 1, 1)                 
     
insert into LineaTematicas values('ESTUDIOS CULTURALES',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('MIGRACI�N',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('ENVEJECIMIENTO',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('AMBIENTE Y DESARROLLO',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('POBLACION',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('DESARROLLO ECONOMICO',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('DESARROLLO REGIONAL',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('ESTUDIO DE LA INDUSTRIA Y EL TRABAJO',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('SOLO ADMINISTRATIVO',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('DESARROLLO REGIONAL Y ESTUDIOS DEL TRABAJO',GETDATE(), GETDATE(), 1, 1, 1)                             
insert into LineaTematicas values('"No especifica la linea tematica"',GETDATE(), GETDATE(), 1, 1, 1)                                               
insert into LineaTematicas values('MIGRACION INTERNACIONAL',GETDATE(), GETDATE(), 1, 1, 1)                                                         
insert into LineaTematicas values('ECONOMIA Y SOCIEDAD',GETDATE(), GETDATE(), 1, 1, 1)                                                             
insert into LineaTematicas values('ESTUDIOS DE TRABAJO',GETDATE(), GETDATE(), 1, 1, 1)                                                             
insert into LineaTematicas values('DESARROLLO REGIONAL Y MEDIO AMBIENTE',GETDATE(), GETDATE(), 1, 1, 1)                                            
insert into LineaTematicas values('HISTORIA Y CULTURA',GETDATE(), GETDATE(), 1, 1, 1)                                                              
insert into LineaTematicas values('ADMINISTRACION PUBLICA Y FINANZAS',GETDATE(), GETDATE(), 1, 1, 1)                                               
insert into LineaTematicas values('DESARROLLO REGIONAL Y REESTRUCTURACION PRODUCTIVA',GETDATE(), GETDATE(), 1, 1, 1)                                
insert into LineaTematicas values('ESTUDIOS CULTURALES',GETDATE(), GETDATE(), 1, 1, 1)                                                             
insert into LineaTematicas values('AMBIENTE Y RECURSOS NATURALES',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('ESTUDIO DE LOS PROCESOS HISTORICOS',GETDATE(), GETDATE(), 1, 1, 1)                                              
insert into LineaTematicas values('ESTUDIOS DE LAS IDENTIDADES',GETDATE(), GETDATE(), 1, 1, 1)                                                     
insert into LineaTematicas values('CAMBIO TECNICO Y ORGANIZACION INDUSTRIAL',GETDATE(), GETDATE(), 1, 1, 1)                                      
insert into LineaTematicas values('INTEGRACION ECONOMICA FRONTERIZA MEXICO-E.U.A.',GETDATE(), GETDATE(), 1, 1, 1)                                  
insert into LineaTematicas values('EVALUACION DE POLITICAS ECONOMICAS',GETDATE(), GETDATE(), 1, 1, 1)                                              
insert into LineaTematicas values('MERCADOS DE TRABAJO Y FUERZA LABORAL',GETDATE(), GETDATE(), 1, 1, 1)                                            
insert into LineaTematicas values('FAMILIA Y SALUD',GETDATE(), GETDATE(), 1, 1, 1)                                                                 
insert into LineaTematicas values('MIGRACION  INTERNACIONAL E INTERNA',GETDATE(), GETDATE(), 1, 1, 1)                                        
insert into LineaTematicas values('PROCESOS DE GLOBALIZACION EN EL CAMPO FRONTERIZO (NO VALIDA)',GETDATE(), GETDATE(), 1, 1, 1)                    
insert into LineaTematicas values('ESTUDIOS DEL TRABAJO E INDUSTRIALES',GETDATE(), GETDATE(), 1, 1, 1)                                             
insert into LineaTematicas values('ESTUDIOS SOCIALES DE MIGRACION',GETDATE(), GETDATE(), 1, 1, 1)                                                  
insert into LineaTematicas values('GESTION AMBIENTAL',GETDATE(), GETDATE(), 1, 1, 1)                                                               
insert into LineaTematicas values('RECURSOS NATURALES',GETDATE(), GETDATE(), 1, 1, 1)                                                              
insert into LineaTematicas values('ESTUDIOS URBANOS',GETDATE(), GETDATE(), 1, 1, 1)                                                                
insert into LineaTematicas values('INSTITUCIONES POLITICAS Y PROCESOS SOCIALES',GETDATE(), GETDATE(), 1, 1, 1)                                     
insert into LineaTematicas values('GOBIERNOS LOCALES Y GESTION BINACIONAL',GETDATE(), GETDATE(), 1, 1, 1)                                          
insert into LineaTematicas values('POLITICAS PUBLICAS Y DESARROLLO REGIONAL',GETDATE(), GETDATE(), 1, 1, 1)

insert into LineaInvestigaciones values('Actividad econ�mica fronteriza', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Ambiente  y  recursos naturales', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Din�mica poblacional de la frontera', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Fronteras y seguridad nacional ', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Gobernabilidad', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Historia del norte de M�xico', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Integraci�n econ�mica M�xico-Estados Unidos', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Interacci�n binacional-local', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Migraci�n internacional', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Procesos culturales', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('Urbanizaci�n del norte de M�xico', GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaInvestigaciones values('N/A', GETDATE(), GETDATE(), 1, 1, 1)

insert into Areas values('L�gica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Matematicas', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Astronomia y astrofisica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Fisica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Quimica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Ciencias de la vida', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Ciencias de la tierra y del cosmos', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Ciencias agroquimicas y veterinarias ', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Ciencias de la tecnologia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Antropologia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Demografia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Ciencias economicas', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Geografia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Historia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Ciencias juridicas y derecho', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Linguistica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Pedagogia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Ciencias politicas', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Psicologia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Artes y letras', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Sociologia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Etica', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Filosofia', GETDATE(), GETDATE(), 1, 1, 1)
insert into Areas values('Prospectiva', GETDATE(), GETDATE(), 1, 1, 1)

--Areas 1=Logica 2=Matematicas
insert into Disciplinas values('Aplicacion de la logica', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Logica deductiva', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Logica general', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Logica inductiva', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Metodologia', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Otras especialidades en materia de logica', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Algebra', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Analisis y analisis funcional', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Informatica matematica', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Geometria', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Teoria de los numeros', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Analisis numerico', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Investigacion operativa', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Disciplinas values('Calculo de probabilidades', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Estadistica', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Topologia', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Informatica', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Sistemas', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Otras especialidades en materia de matematicas', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Fecundidad', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Demografia general', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Demografia geografica', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Demografica historica', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Mortalidad', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Caracteristicas de las poblaciones', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Evolucion demografica', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Disciplinas values('Otras especialidades en materia de demografia', GETDATE(), GETDATE(), 1, 2, 1, 1)

--insert into Subdisciplinas values('Tasa de natalidad', GETDATE(), GETDATE(), 1, DisciplinaFk, 1, 1)
--Disciplinas 1 = Aplicacion de la logica 2 = Logica deductiva
insert into Subdisciplinas values('Tasa de natalidad', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Fecunidad general', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Ilegitimidad', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Nupcialidad', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Esterilidad y fecundidad', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Otros', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Metodologia de la investigacion', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Metodologia de analisis', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into Subdisciplinas values('Teoria', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Subdisciplinas values('Movilidad y migraciones internas', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Subdisciplinas values('Movilidad y migraciones internacionales', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Subdisciplinas values('Demografica local', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Subdisciplinas values('Demografia regional', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Subdisciplinas values('Demografia rural', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into Subdisciplinas values('Demografia urbana', GETDATE(), GETDATE(), 1, 2, 1, 1)

--Valores de prueba
--insert into AreaTematicas values('Area tematica 1', GETDATE(), GETDATE(), 1, LineaTematicaFk, SubdisciplinaFk, 1, 1)
--1 = ESTUDIOS CULTURALES LineaTematicaFk => 1 = Tasa de natalidad SubdisciplinaFk
--2 = MIGRACI�N LineaTematicaFk => 2 = Fecunidad general SubdisciplinaFk
insert into AreaTematicas values('Area tematica 1', GETDATE(), GETDATE(), 1, 1, 1, 1, 1)
insert into AreaTematicas values('Area tematica 2', GETDATE(), GETDATE(), 1, 1, 1, 1, 1)
insert into AreaTematicas values('Area tematica 3', GETDATE(), GETDATE(), 1, 1, 1, 1, 1)
insert into AreaTematicas values('Area tematica 4', GETDATE(), GETDATE(), 1, 1, 1, 1, 1)
insert into AreaTematicas values('Area tematica 5', GETDATE(), GETDATE(), 1, 1, 1, 1, 1)
insert into AreaTematicas values('Area tematica 6', GETDATE(), GETDATE(), 1, 2, 2, 1, 1)
insert into AreaTematicas values('Area tematica 7', GETDATE(), GETDATE(), 1, 2, 2, 1, 1)
insert into AreaTematicas values('Area tematica 8', GETDATE(), GETDATE(), 1, 2, 2, 1, 1)
insert into AreaTematicas values('Area tematica 9', GETDATE(), GETDATE(), 1, 2, 2, 1, 1)
insert into AreaTematicas values('Area tematica 10', GETDATE(), GETDATE(), 1, 2, 2, 1, 1)

insert into RevistaPublicaciones values('AMERICAN NATURALIST', 'Monthly', '0003-0147', 'UNIV CHICAGO PRESS, 5720 SOUTH WOODLAWN AVE, CHICAGO, IL, 60637-1603', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN NEPTUNE', 'Quarterly', '0003-0155', 'PEABODY MUSEUM, E INDIA MARINE HALL, SALEM, MA, 01970', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN PHILOSOPHICAL QUARTERLY', 'Quarterly', '0003-0481', 'BOWLING GREEN STATE UNIVERSITY, PHILOSOPHY DOCUMENT CENTER, BOWLING GREEN, OH,   43403', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN POETRY REVIEW', 'Bimonthly', '0360-3709', 'WORLD POETRY INC, TEMPLE UNIV CENTER CITY, 1616 WALNUT ST-ROOM 405,   PHILADELPHIA, PA, 19103', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN POLITICAL SCIENCE REVIEW', 'Quarterly', '0003-0554', 'AMER POLITICAL SCIENCE ASSOC, 1527 NEW HAMPSHIRE N W, WASHINGTON, DC, 20036', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN POLITICS QUARTERLY', 'Quarterly', '0044-7803', 'SAGE PUBLICATIONS INC, 2455 TELLER RD, THOUSAND OAKS, CA, 91320', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN PSYCHIATRIC ASSOCIATION 150TH ANNUAL MEETING SAN DIEGO   CALIFORNIA PROGRAM AND ABSTRACTS ON NEW RESEARCH IN SUMMARY FORM', 'Irregular', '+ACoAKgAqACo--+ACoAKgAqACo-', 'AMER PSYCHIATRIC PRESS, INC, 1400 K ST, N W, STE 1101, WASHINGTON, DC, 20005', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN PSYCHOLOGIST', 'Monthly', '0003-066X', 'AMER PSYCHOLOGICAL ASSOC, 750 FIRST ST NE, WASHINGTON, DC, 20002-4242', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN QUARTERLY', 'Quarterly', '0003-0678', 'JOHNS HOPKINS UNIV PRESS, JOURNALS PUBLISHING DIVISION,2715 NORTH CHARLES ST,   BALTIMORE, MD, 21218-4319', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN REVIEW OF PUBLIC ADMINISTRATION', 'Quarterly', '0275-0740', 'SAGE PUBLICATIONS INC, 2455 TELLER RD, THOUSAND OAKS, CA, 91320', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SCHOLAR', 'Quarterly', '0003-0937', 'PHI BETA KAPPA SOC, 1785 MASSACHUSETTS AVENUE,N W FOURTH FL,, WASHINGTON, DC,   20036', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SCIENTIST', 'Bimonthly', '0003-0996', 'SIGMA XI-SCI RES SOC, PO BOX 13975, RES TRIANGLE PK, NC, 27709', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SOCIETY FOR REPRODUCTIVE MEDICINE-ABSTRACT SEARCH', 'Annual', '+ACoAKgAqACo--+ACoAKgAqACo-', 'PARKE-DAVIS, DIVISION WARNER-LAMBERT CO, 201 TABOR RD, MORRIS PLAINS, NJ, 07950', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SOCIOLOGICAL REVIEW', 'Bimonthly', '0003-1224', 'AMER SOCIOLOGICAL ASSOC, 1307 NEW YORK AVE NW +ACM-700, WASHINGTON, DC, 20005-4712', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SPEECH', 'Quarterly', '0003-1283', 'DUKE UNIV PRESS, 905 W MAIN ST, STE 18-B, DURHAM, NC, 27701', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN STATISTICIAN', 'Quarterly', '0003-1305', 'AMER STATISTICAL ASSOC, 1429 DUKE ST, ALEXANDRIA, VA, 22314', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN STUDIES IN SCANDINAVIA', 'Semiannual', '0044-8060', 'ODENSE UNIV PRESS, CAMPUSVEJ 55, ODENSE M, DENMARK, 5230', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN STUDIES INTERNATIONAL', 'Triennial', '+ACoAKgAqACo--+ACoAKgAqACo-', 'GEORGE WASHINGTON UNIV, AMERICAN STUDIES PROGRAM, WASHINGTON, DC, 20052', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SURGEON', 'Monthly', '0003-1348', 'SOUTHEASTERN SURGICAL CONGRESS, 141 WEST WIEUCA RD, STE B100, ATLANTA, GA,   30342', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN TRANSCENDENTAL QUARTERLY', 'Quarterly', '0149-9017', 'UNIV RHODE ISLAND, DEPT ENGLISH, KINGSTON, RI, 02881', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAN ZOOLOGIST', 'Bimonthly', '0003-1569', 'AMER SOC ZOOLOGISTS, 1041 NEW HAMPSHIRE ST, LAWRENCE, KS, 66044', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAS', 'Quarterly', '0003-1615', 'ACAD AMER FRANCISCAN HIST, BOX 34440, WEST BETHESDA, MD, 20817', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMERICAS NETWORK', 'Semimonthly', '1075-5292', 'ADVANSTAR COMMUNICATIONS, 131 W FIRST ST, DULUTH, MN, 55802', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMINO ACIDS', 'Bimonthly', '0939-4451', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMPHIBIA-REPTILIA', 'Quarterly', '0173-5373', 'BRILL ACADEMIC PUBLISHERS, PLANTIJNSTRAAT 2,P O BOX 9000, LEIDEN, NETHERLANDS,   2300 PA', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANAEROBE', 'Bimonthly', '1075-9964', 'ACADEMIC PRESS LTD, 24-28 OVAL RD, LONDON, ENGLAND, NW1 7DX', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANAESTHESIA', 'Monthly', '0003-2409', 'BLACKWELL SCIENCE LTD, P O BOX 88,OSNEY MEAD, OXFORD, ENGLAND, OX2 0NE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('AMYLOID-INTERNATIONAL JOURNAL OF EXPERIMENTAL AND CLINICAL INVESTIGATION', 'Quarterly', '1350-6129', 'PARTHENON PUBLISHING GROUP, CASTERTON HALL, CARNFORTH LANCASHIRE, ENGLAND, LA6   2LA', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANAESTHESIA AND INTENSIVE CARE', 'Quarterly', '0310-057X', 'AUSTRALIAN SOC ANAESTHETISTS, P O BOX 600, EDGECLIFF, AUSTRALIA, 2021', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANAESTHESIST', 'Monthly', '0003-2417', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALES DE LA ASOCIACION QUIMICA ARGENTINA', 'Triennial', '0365-0375', 'ASOC QUIMICA ARGENTINA, SANCHEZ DE BUSTAMANTE 1749, BUENOS AIRES, ARGENTINA,   1425', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALES DE LA LITERATURA ESPANOLA CONTEMPORANEA', 'Semiannual', '0272-1635', 'UNIV NEBRASKA-LINCOLN, DEPT MODERN LANGUAGES, +ACY- LITERATURES,OLDFATHER   HALLLINCOLN, NE, 68588', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALES ESPANOLES DE PEDIATRIA', 'Monthly', '0302-4342', 'ANALES ESPANOLES PEDIATRIA, ARBOLEDA, 1, MADRID, SPAIN, 28220', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALOG INTEGRATED CIRCUITS AND SIGNAL PROCESSING', 'Monthly', '0925-1030', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALUSIS', 'Monthly', '0365-4877', 'E D P SCIENCES, 7, AVE DU HOGGAR,PARC D ACTIVITES COURTABOEUF,BP 112LES ULIS   CEDEXA, FRANCE, F-91944', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYSIS', 'Quarterly', '0003-2638', 'BLACKWELL PUBL LTD, 108 COWLEY RD, OXFORD, ENGLAND, OX4 1JF', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYST', 'Monthly', '0003-2654', 'ROYAL SOC CHEMISTRY, THOMAS GRAHAM HOUSE,SCIENCE PARK,MILTON RD,CAMBRIDGE,   ENGLAND, CB4 0WF', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICA CHIMICA ACTA', 'Weekly', '0003-2670', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL AND QUANTITATIVE CYTOLOGY AND HISTOLOGY', 'Bimonthly', '0884-6812', 'SCI PRINTERS +ACY- PUBL INC, P.O. DRAWER 12425, 8342 OLIVE BLVD, ST LOUIS, MO,   63132', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL BIOCHEMISTRY', 'Semimonthly', '0003-2697', 'ACADEMIC PRESS INC, 525 B ST, STE 1900, SAN DIEGO, CA, 92101-4495', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL CELLULAR PATHOLOGY', 'Bimonthly', '0921-8912', 'IOS PRESS, NIEUWE HEMWEG 6B, AMSTERDAM, NETHERLANDS, 1013 BG', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL CHEMISTRY', 'Semimonthly', '0003-2700', 'AMER CHEMICAL SOC, 1155 16TH ST, NW, WASHINGTON, DC, 20036', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL COMMUNICATIONS', 'Monthly', '1359-7337', 'ROYAL SOC CHEMISTRY, THOMAS GRAHAM HOUSE,SCIENCE PARK,MILTON RD,CAMBRIDGE,   ENGLAND, CB4 0WF', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL LETTERS', 'Monthly', '0003-2719', 'MARCEL DEKKER INC, 270 MADISON AVE, NEW YORK, NY, 10016', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL SCIENCES', 'Bimonthly', '0910-6340', 'JAPAN SOC ANALYTICAL CHEM, 26-2 NISHIGOTANDA 1 CHOME, SHINAGAWA-KU, TOKYO,   JAPAN, 141', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANALYTISCHE PSYCHOLOGIE', 'Quarterly', '0301-3006', 'KARGER, ALLSCHWILERSTRASSE 10, BASEL, SWITZERLAND, CH-4009', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANASTHESIOLOGIE +ACY- INTENSIVMEDIZIN', 'Monthly', '0170-5334', 'BLACKWELL WISSENSCHAFTS-VERLAG GMBH, KURFURSTENDAMM 57, BERLIN, GERMANY,   D-10707', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANASTHESIOLOGIE INTENSIVMEDIZIN NOTFALLMEDIZIN SCHMERZTHERAPIE', 'Bimonthly', '0939-2661', 'GEORG THIEME VERLAG, RUDIGERSTR 14, STUTTGART, GERMANY, D-70469', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANATOMIA HISTOLOGIA EMBRYOLOGIA-JOURNAL OF VETERINARY MEDICINE SERIES C', 'Bimonthly', '0340-2096', 'BLACKWELL WISSENSCHAFTS-VERLAG GMBH, KURFURSTENDAMM 57, BERLIN, GERMANY,   D-10707', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANATOMICAL RECORD', 'Semimonthly', '0003-276X', 'WILEY-LISS, DIV JOHN WILEY +ACY- SONS INC,605 THIRD AVE, NEW YORK, NY, 10158-0012', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANATOMY AND EMBRYOLOGY', 'Monthly', '0340-2061', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANDROLOGIA', 'Bimonthly', '0303-4569', 'BLACKWELL WISSENSCHAFTS-VERLAG GMBH, KURFURSTENDAMM 57, BERLIN, GERMANY,   D-10707', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANESTHESIA AND ANALGESIA', 'Monthly', '0003-2999', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANESTHESIOLOGY', 'Monthly', '0003-3022', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANESTHESIOLOGY CLINICS OF NORTH AMERICA', 'Quarterly', '0889-8537', 'W B SAUNDERS CO, INDEPENDENCE SQUARE WEST, CURTIS CENTER, STE 300,   PHILADELPHIA, PA, 19106-3399', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANGEWANDTE CHEMIE-INTERNATIONAL EDITION', 'Semimonthly', '1433-7851', 'WILEY-V C H VERLAG GMBH, MUHLENSTRASSE 33-34, BERLIN, GERMANY, D-13187', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANGIOLOGY', 'Monthly', '0003-3197', 'WESTMINSTER PUBL INC, 708 GLEN COVE AVE, GLEN HEAD, NY, 11545', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANGLE ORTHODONTIST', 'Bimonthly', '0003-3219', 'ANGLE ORTHODONTISTS RES EDUC FOUNDATION INC, 100 W LAWRENCE ST,SUITE 406,,   APPLETON, WI, 54911', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANGLIA-ZEITSCHRIFT FUR ENGLISCHE PHILOLOGIE', 'Semiannual', '0340-5222', 'MAX NIEMEYER VERLAG, POSTFACH 21 40, PFRONDORFER STR 6, TUBINGEN, GERMANY,   W-7400', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL BEHAVIOUR', 'Monthly', '0003-3472', 'ACADEMIC PRESS LTD, 24-28 OVAL RD, LONDON, ENGLAND, NW1 7DX', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL BIOTECHNOLOGY', 'Semiannual', '1049-5398', 'MARCEL DEKKER INC, 270 MADISON AVE, NEW YORK, NY, 10016', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL FEED SCIENCE AND TECHNOLOGY', 'Semimonthly', '0377-8401', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL GENETICS', 'Bimonthly', '0268-9146', 'BLACKWELL SCIENCE LTD, P O BOX 88,OSNEY MEAD, OXFORD, ENGLAND, OX2 0NE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL LEARNING +ACY- BEHAVIOR', 'Quarterly', '0090-4996', 'PSYCHONOMIC SOC INC, 1710 FORTVIEW RD, AUSTIN, TX, 78704', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL REPRODUCTION SCIENCE', 'Monthly', '0378-4320', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL SCIENCE', 'Bimonthly', '1357-7298', 'BRITISH SOC ANIMAL SCIENCE, PUBLICATIONS DEPT,PO BOX 3, PENICUIK, SCOTLAND,   EH26 ORZ', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANIMAL WELFARE', 'Quarterly', '0962-7286', 'UNIV FEDERATION ANIMAL WELFARE, OLD SCHOOL, BREWHOUSE HILL, WHEATHAMPSTEAD,   ENGLAND, AL4 8AN', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALEN DER PHYSIK', 'Bimonthly', '0003-3804', 'WILEY-V C H VERLAG GMBH, MUHLENSTRASSE 33-34, BERLIN, GERMANY, D-13187', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES ACADEMIAE SCIENTIARUM FENNICAE-MATHEMATICA', 'Semiannual', '1239-629X', 'SUOMALAINEN TIEDEAKATEMIA, MARIANKATU 5, HELSINKI, FINLAND, 00170', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES BOTANICI FENNICI', 'Quarterly', '0003-3847', 'FINNISH ZOOLOGICAL BOTANICAL PUBLISHING BOARD, P O BOX 17, UNIV HELSINKI,   FINLAND, FIN-00014', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES CHIRURGIAE ET GYNAECOLOGIAE', 'Quarterly', '0355-9521', 'FINNISH SURGICAL SOC, MAKELANKATU 2, HELSINKI, FINLAND, SF-00550', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES D ENDOCRINOLOGIE', 'Bimonthly', '0003-4266', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES D UROLOGIE', 'Bimonthly', '0003-4401', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE BIOLOGIE CLINIQUE', 'Bimonthly', '0003-3898', 'JOHN LIBBEY EUROTEXT LTD, 127 AVE DE LA REPUBLIQUE, MONTROUGE, FRANCE, 92120', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE BRETAGNE ET DES PAYS DE L OUEST', 'Quarterly', '0399-0826', 'UNIV HAUTE-BRETAGNE, ANN BRETAGNE PAYS OUEST, AVE GASTON-BERGER, RENNES,   FRANCE, 35000', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE CARDIOLOGIE ET D ANGEIOLOGIE', 'Monthly', '0003-3928', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE CHIMIE-SCIENCE DES MATERIAUX', 'Bimonthly', '0151-9107', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE CHIRURGIE', 'Monthly', '0003-3944', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE DERMATOLOGIE ET DE VENEREOLOGIE', 'Monthly', '0151-9638', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE GASTROENTEROLOGIE ET D HEPATOLOGIE', 'Bimonthly', '0066-2070', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE GENETIQUE', 'Quarterly', '0003-3995', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE L INSTITUT FOURIER', 'Bimonthly', '0373-0956', 'ANNALES DE L INSTITUT FOURIER, INST DE MATHEMATIQUES PURES, BOITE POSTALE 116,   ST MARTIN D HERES CEDEX, FRANCE, 38402', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE L INSTITUT HENRI POINCARE-ANALYSE NON LINEAIRE', 'Bimonthly', '0294-1449', 'GAUTHIER-VILLARS/EDITIONS ELSEVIER, 23 RUE LINOIS, PARIS, FRANCE, 75015', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE L INSTITUT HENRI POINCARE-PROBABILITES ET STATISTIQUES', 'Bimonthly', '0246-0203', 'GAUTHIER-VILLARS/EDITIONS ELSEVIER, 23 RUE LINOIS, PARIS, FRANCE, 75015', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE LA SOCIETE ENTOMOLOGIQUE DE FRANCE', 'Quarterly', '0037-9271', 'SOC ENTOMOLOGIQUE FRANCE, 45 RUE BUFFON, PARIS, FRANCE, 75005', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE LIMNOLOGIE-INTERNATIONAL JOURNAL OF LIMNOLOGY', 'Quarterly', '0003-4088', 'UNIV PAUL SABITIER-TOULOUSE III-CESAC, 118 ROUTE NARBONNE, TOULOUSE, FRANCE,   F-31062', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE MEDECINE INTERNE', 'Bimonthly', '0003-410X', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE MEDECINE VETERINAIRE', 'Bimonthly', '0003-4118', 'ANNALES MEDECINE VETERINAIRE, UNIVERSITE LIEGE,SART TILMAN BAT 43, LIEGE,   BELGIUM, B-4000', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE PATHOLOGIE', 'Bimonthly', '0242-6498', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE PEDIATRIE', 'Monthly', '0066-2097', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE PHYSIQUE', 'Bimonthly', '0003-4169', 'E D P SCIENCES, 7, AVE DU HOGGAR,PARC D ACTIVITES COURTABOEUF,BP 112LES ULIS   CEDEXA, FRANCE, F-91944', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE ZOOTECHNIE', 'Bimonthly', '0003-424X', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DES SCIENCES NATURELLES-ZOOLOGIE ET BIOLOGIE ANIMALE', 'Quarterly', '0003-4339', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES DES TELECOMMUNICATIONS-ANNALS OF TELECOMMUNICATIONS', 'Bimonthly', '0003-4347', 'PRESSES POLYTECHNIQUES ET UNIVERSITAIRES ROMANDES, EPFL-ECUBLENS,CENTRE MIDI,   LAUSANNE, SWITZERLAND, CH-1015', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES FRANCAISES D ANESTHESIE ET DE REANIMATION', 'Bimonthly', '0750-7658', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES GEOPHYSICAE-ATMOSPHERES HYDROSPHERES AND SPACE SCIENCES', 'Monthly', '0992-7689', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES HENRI POINCARE', 'Bimonthly', '1424-0637', 'BIRKHAUSER VERLAG AG, VIADUKSTRASSE 40-44,PO BOX 133, BASEL, SWITZERLAND,   CH-4010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES HISTORIQUES DE LA REVOLUTION FRANCAISE', 'Quarterly', '0003-4436', 'UNIV PARIS SORBONNE, SOC ETUD ROBESPIERRISTES, 17 RUE DE LA SORBONNE, PARIS   05, FRANCE, 75231', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES MEDICO-PSYCHOLOGIQUES', 'Monthly', '0003-4487', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES SCIENTIFIQUES DE L ECOLE NORMALE SUPERIEURE', 'Bimonthly', '0012-9593', 'GAUTHIER-VILLARS/EDITIONS ELSEVIER, 23 RUE LINOIS, PARIS, FRANCE, 75015', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES ZOOLOGICI FENNICI', 'Quarterly', '0003-455X', 'FINNISH ZOOLOGICAL BOTANICAL PUBLISHING BOARD, P O BOX 17, UNIV HELSINKI,   FINLAND, FIN-00014', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALES-HISTOIRE SCIENCES SOCIALES', 'Bimonthly', '0395-2649', 'LIBRAIRIE ARMAND COLIN, 34 BIS RUE DE L UNIVERSITE, PARIS, FRANCE, 75007', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALI DI CHIMICA', 'Bimonthly', '0003-4592', 'SOC CHIMICA ITALIANA, VIALE LIEGI 48, ROME, ITALY, I-00198', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALI DI GEOFISICA', 'Bimonthly', '0365-2556', 'EDITRICE COMPOSITORI BOLOGNA, VIA SAN QUIRICO 13/2, SIENA, ITALY, I-53100', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALI DI MICROBIOLOGIA ED ENZIMOLOGIA', 'Semiannual', '0003-4649', 'INST MICROBIOLOGIA, VIA CELORIA 2, MILAN, ITALY, 20133', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ALLERGY ASTHMA +ACY- IMMUNOLOGY', 'Monthly', '1081-1206', 'AMER COLL ALLERGY ASTHMA IMMUNOLOGY, 85 WEST ALGONQUIN RD, SUITE 550,   ARLINGTON HTS, IL, 60005', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ANATOMY-ANATOMISCHER ANZEIGER', 'Bimonthly', '0940-9602', 'URBAN +ACY- FISCHER VERLAG, BRANCH OFFICE JENA,P O BOX 100537, JENA, GERMANY,   D-07705', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF APPLIED BIOLOGY', 'Bimonthly', '0003-4746', 'ASSOC APPLIED BIOLOGISTS, NATL VEGETABLE RES STATION, WELLSBOURNE, WARWICK,   ENGLAND, CV35 9EF', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF APPLIED PROBABILITY', 'Quarterly', '1050-5164', 'INST MATHEMATICAL STATISTICS, IMS BUSINESS OFFICE-SUITE 7,3401 INVESTMENT   BLVD, HAYWARD, CA, 94545', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ARID ZONE', 'Quarterly', '0570-1791', 'ARID ZONE RESEARCH ASSOC INDIA, C.A.Z.R.I. CAMPUS, JODHPUR, INDIA, 342 003', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF BEHAVIORAL MEDICINE', 'Quarterly', '0883-6612', 'SOC BEHAVIORAL MEDICINE, 7611 ELMWOOD AVE, STE 201, MIDDLETON, WI, 53562-3161', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF BIOMEDICAL ENGINEERING', 'Bimonthly', '0090-6964', 'AMER INST PHYSICS, 2 HUNTINGTON QUADRANGLE,STE 1NO1, MELVILLE, NY, 11747-4501', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF BOTANY', 'Monthly', '0305-7364', 'ACADEMIC PRESS LTD, 24-28 OVAL RD, LONDON, ENGLAND, NW1 7DX', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF CARNEGIE MUSEUM', 'Quarterly', '0097-4463', 'CARNEGIE MUSEUM NATURAL HISTORY, 4400 FORBES AVE, PITTSBURGH, PA, 15213', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF CLINICAL AND LABORATORY SCIENCE', 'Bimonthly', '0091-7370', 'INST CLINICAL SCIENCE INC, 1833 DELANCEY PLACE, PHILADELPHIA, PA, 19103', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF CLINICAL BIOCHEMISTRY', 'Bimonthly', '0004-5632', 'ROYAL SOC MEDICINE PRESS LTD, 1 WIMPOLE STREET, LONDON, ENGLAND, W1M 8AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF DYSLEXIA', 'Annual', '0736-9387', 'INT DYSLEXIA ASSOC, CHESTER BUILDING, STE 382,8600 LA SALLE RD, BALTIMORE, MD,   21286-2044', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF EMERGENCY MEDICINE', 'Monthly', '0196-0644', 'MOSBY-YEAR BOOK INC, 11830 WESTLINE INDUSTRIAL DR, ST LOUIS, MO, 63146-3318', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF EPIDEMIOLOGY', 'Bimonthly', '1047-2797', 'ELSEVIER SCIENCE INC, 655 AVENUE OF THE AMERICAS, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF FOREST SCIENCE', 'Bimonthly', '1286-4560', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF GLACIOLOGY', 'Annual', '0260-3055', 'INT GLACIOLOGICAL SOC, LENSFIELD RD, CAMBRIDGE, ENGLAND, CB2 1ER', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF GLOBAL ANALYSIS AND GEOMETRY', 'Bimonthly', '0232-704X', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF HEMATOLOGY', 'Monthly', '0939-5555', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF HUMAN BIOLOGY', 'Bimonthly', '0301-4460', 'TAYLOR +ACY- FRANCIS LTD, 11 NEW FETTER LANE, LONDON, ENGLAND, EC4P 4EE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF HUMAN GENETICS', 'Bimonthly', '0003-4800', 'CAMBRIDGE UNIV PRESS, 40 WEST 20TH STREET, NEW YORK, NY, 10011-4211', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF INTERNAL MEDICINE', 'Semimonthly', '0003-4819', 'AMER COLL PHYSICIANS, INDEPENDENCE MALL WEST, 6TH AND RACE ST, PHILADELPHIA,   PA, 19106-1572', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MATHEMATICS', 'Bimonthly', '0003-486X', 'ANN MATHEMATICS, PO BOX 231, PRINCETON, NJ, 08540', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MATHEMATICS AND ARTIFICIAL INTELLIGENCE', 'Quarterly', '1012-2443', 'BALTZER SCI PUBL BV, PO BOX 221, BUSSUM, NETHERLANDS, 1400 AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MATHEMATICS STUDIES', 'Semiannual', '0066-2313', 'PRINCETON UNIV PRESS, 41 WILLIAM ST, PRINCETON, NJ, 08540', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MEDICINE', 'Bimonthly', '0785-3890', 'ROYAL SOC MEDICINE PRESS LTD, 1 WIMPOLE STREET, LONDON, ENGLAND, W1M 8AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NEUROLOGY', 'Monthly', '0364-5134', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NUCLEAR ENERGY', 'Semimonthly', '0306-4549', 'PERGAMON-ELSEVIER SCIENCE LTD, THE BOULEVARD, LANGFORD LANE,KIDLINGTON,   OXFORD, ENGLAND, OX5 1GB', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NUCLEAR MEDICINE', 'Bimonthly', '0914-7187', 'JAPANESE SOCIETY NUCLEAR MEDICINE, C/O JAPAN RADIOISOTOPE ASSOC,28-45   HON-KOMAGOME 2-CHOME,BUNKYO-KU, TOKYO, JAPAN, 113-0021', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NUTRITION AND METABOLISM', 'Bimonthly', '0250-6807', 'KARGER, ALLSCHWILERSTRASSE 10, BASEL, SWITZERLAND, CH-4009', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OCCUPATIONAL HYGIENE', 'Bimonthly', '0003-4878', 'PERGAMON-ELSEVIER SCIENCE LTD, THE BOULEVARD, LANGFORD LANE,KIDLINGTON,   OXFORD, ENGLAND, OX5 1GB', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ONCOLOGY', 'Monthly', '0923-7534', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OPERATIONS RESEARCH', 'Monthly', '0254-5330', 'BALTZER SCI PUBL BV, PO BOX 221, BUSSUM, NETHERLANDS, 1400 AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OPHTHALMOLOGY', 'Quarterly', '1079-4794', 'AMER SOC CONTEMPORARY OPHTHALMOLOGY, 820 N ORLEANS, STE 208, CHICAGO, IL, 60610', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OTOLOGY RHINOLOGY AND LARYNGOLOGY', 'Monthly', '0003-4894', 'ANNALS PUBL CO, 4507 LACLEDE AVE, ST LOUIS, MO, 63108', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PHARMACOTHERAPY', 'Monthly', '1060-0280', 'HARVEY WHITNEY BOOKS CO, PO BOX 42696, CINCINNATI, OH, 45242', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PHYSICS', 'Semimonthly', '0003-4916', 'ACADEMIC PRESS INC, 525 B ST, STE 1900, SAN DIEGO, CA, 92101-4495', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PLASTIC SURGERY', 'Monthly', '0148-7043', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PROBABILITY', 'Quarterly', '0091-1798', 'INST MATHEMATICAL STATISTICS, IMS BUSINESS OFFICE-SUITE 7,3401 INVESTMENT   BLVD, HAYWARD, CA, 94545', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PURE AND APPLIED LOGIC', 'Semimonthly', '0168-0072', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF REGIONAL SCIENCE', 'Quarterly', '0570-1864', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SAUDI MEDICINE', 'Bimonthly', '0256-4947', 'K FAISAL SPEC HOSP RES CENTRE, PUBLICATIONS OFFICE, PO BOX 3354, RIYADH, SAUDI   ARABIA, 11211', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SCIENCE', 'Quarterly', '0003-3790', 'TAYLOR +ACY- FRANCIS LTD, 11 NEW FETTER LANE, LONDON, ENGLAND, EC4P 4EE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SOFTWARE ENGINEERING', 'Semiannual', '1022-7091', 'BALTZER SCI PUBL BV, PO BOX 221, BUSSUM, NETHERLANDS, 1400 AE', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF STATISTICS', 'Quarterly', '0090-5364', 'INST MATHEMATICAL STATISTICS, IMS BUSINESS OFFICE-SUITE 7,3401 INVESTMENT   BLVD, HAYWARD, CA, 94545', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SURGERY', 'Monthly', '0003-4932', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SURGICAL ONCOLOGY', 'Bimonthly', '1068-9265', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE AMERICAN ACADEMY OF POLITICAL AND SOCIAL SCIENCE', 'Bimonthly', '0002-7162', 'SAGE PUBLICATIONS INC, 2455 TELLER RD, THOUSAND OAKS, CA, 91320', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE ASSOCIATION OF AMERICAN GEOGRAPHERS', 'Quarterly', '0004-5608', 'BLACKWELL PUBLISHERS, 350 MAIN STREET, STE 6, MALDEN, MA, 02148', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE ENTOMOLOGICAL SOCIETY OF AMERICA', 'Bimonthly', '0013-8746', 'ENTOMOL SOC AMER, 9301 ANNAPOLIS RD, LANHAM, MD, 20706', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE INSTITUTE OF STATISTICAL MATHEMATICS', 'Quarterly', '0020-3157', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE MISSOURI BOTANICAL GARDEN', 'Quarterly', '0026-6493', 'MISSOURI BOTANICAL GARDEN, 2345 TOWER GROVE AVENUE, ST LOUIS, MO, 63110', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE NEW YORK ACADEMY OF SCIENCES', 'Monthly', '0077-8923', 'NEW YORK ACAD SCIENCES, 2 EAST 63RD ST, NEW YORK, NY, 10021', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE RHEUMATIC DISEASES', 'Monthly', '0003-4967', 'BRITISH MED JOURNAL PUBL GROUP, BRITISH MED ASSOC HOUSE,TAVISTOCK SQUARE,   LONDON, ENGLAND, WC1H 9JR', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE ROYAL COLLEGE OF SURGEONS OF ENGLAND', 'Bimonthly', '0035-8843', 'ROYAL COLL SURGEONS ENGLAND, 35-43 LINCOLN''S INN FIELDS, LONDON, ENGLAND, WC2A   3PN', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THORACIC SURGERY', 'Monthly', '0003-4975', 'ELSEVIER SCIENCE INC, 655 AVENUE OF THE AMERICAS, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF TOURISM RESEARCH', 'Quarterly', '0160-7383', 'PERGAMON-ELSEVIER SCIENCE LTD, THE BOULEVARD, LANGFORD LANE,KIDLINGTON,   OXFORD, ENGLAND, OX5 1GB', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF TROPICAL MEDICINE AND PARASITOLOGY', 'Bimonthly', '0003-4983', 'CARFAX PUBLISHING, RANKINE RD, BASINGSTOKE, ENGLAND, RG24 8PR', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF TROPICAL PAEDIATRICS', 'Quarterly', '0272-4936', 'CARFAX PUBLISHING, RANKINE RD, BASINGSTOKE, ENGLAND, RG24 8PR', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF VASCULAR SURGERY', 'Bimonthly', '0890-5096', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNEE PSYCHOLOGIQUE', 'Quarterly', '0003-5033', 'PRESSES UNIV FRANCE, DEPT DES REVUES, 14, AVENUE DU BOIS-DE-L EPINEB P 90EVRY   CEDEX, FRANCE, 91003', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL OF THE SOCIETY OF CHRISTIAN ETHICS', 'Annual', '0732-4928', 'SOC CHRISTIAN ETHICS, BOSTON UNIV, SCHOOL THEOLOGY,745 COMMONWEALTH AVE,   BOSTON, MA, 02215', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REPORTS IN MEDICINAL CHEMISTRY', 'Annual', '0065-7743', 'ACADEMIC PRESS INC, 525 B STREET,SUITE 1900, SAN DIEGO, CA, 92101-4495', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REPORTS ON NMR SPECTROSCOPY', 'null', '0066-4103', 'ACADEMIC PRESS LTD, 24-28 OVAL ROAD, LONDON, ENGLAND, NW1 7DX', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF ANTHROPOLOGY', 'Annual', '0084-6570', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF ASTRONOMY AND ASTROPHYSICS', 'Annual', '0066-4146', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF BIOCHEMISTRY', 'Annual', '0066-4154', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF BIOMEDICAL ENGINEERING', 'Annual', '1523-9829', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF BIOPHYSICS AND BIOMOLECULAR STRUCTURE', 'Annual', '1056-8700', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF CELL AND DEVELOPMENTAL BIOLOGY', 'Annual', '1081-0706', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF EARTH AND PLANETARY SCIENCES', 'Annual', '0084-6597', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF ECOLOGY AND SYSTEMATICS', 'Annual', '0066-4162', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF ENERGY AND THE ENVIRONMENT', 'Annual', '1056-3466', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF ENTOMOLOGY', 'Annual', '0066-4170', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF FLUID MECHANICS', 'Annual', '0066-4189', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF GENETICS', 'Annual', '0066-4197', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF IMMUNOLOGY', 'Annual', '0732-0582', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF INFORMATION SCIENCE AND TECHNOLOGY', 'Annual', '0066-4200', 'INFORMATION TODAY INC, 143 OLD MARLTON PIKE, MEDFORD, NJ, 08055-8750', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF MATERIALS SCIENCE', 'Annual', '0084-6600', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF MEDICINE', 'Annual', '0066-4219', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF MICROBIOLOGY', 'Annual', '0066-4227', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF NEUROSCIENCE', 'Annual', '0147-006X', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF NUCLEAR AND PARTICLE SCIENCE', 'Annual', '0163-8998', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF NUTRITION', 'Annual', '0199-9885', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF PHARMACOLOGY AND TOXICOLOGY', 'Annual', '0362-1642', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF PHYSICAL CHEMISTRY', 'Annual', '0066-426X', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF PHYSIOLOGY', 'Annual', '0066-4278', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF PHYTOPATHOLOGY', 'Annual', '0066-4286', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF PLANT PHYSIOLOGY AND PLANT MOLECULAR BIOLOGY', 'Annual', '1040-2519', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF PSYCHOLOGY', 'Annual', '0066-4308', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF PUBLIC HEALTH', 'Annual', '0163-7525', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANNUAL REVIEW OF SOCIOLOGY', 'Annual', '0360-0572', 'ANNUAL REVIEWS, 4139 EL CAMINO WAY,PO BOX 10139, PALO ALTO, CA, 94303-0139', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANQ-A QUARTERLY JOURNAL OF SHORT ARTICLES NOTES AND REVIEWS', 'Quarterly', '0895-769X', 'HELDREF PUBLICATIONS, 1319 EIGHTEENTH ST NW, WASHINGTON, DC, 20036-1802', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANTARCTIC SCIENCE', 'Quarterly', '0954-1020', 'CAMBRIDGE UNIV PRESS, 40 WEST 20TH STREET, NEW YORK, NY, 10011-4211', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANTHROPOLOGICAL QUARTERLY', 'Quarterly', '0003-5491', 'CATHOLIC UNIV AMER PRESS, 620 MICHIGAN AVENUE NE, ADMIN BLDG ROOM 303,   WASHINGTON, DC, 20064', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)
insert into RevistaPublicaciones values('ANTHROPOLOGICAL SCIENCE', 'Quarterly', '0918-7960', 'UNIV TOKYO, FACULTY SCI-DEPT ANTHROPOL, 7-3-1 HONGO, BUNKYO-KU TOKYO, JAPAN,   113', 'ISI', 'A', 0, GETDATE(), GETDATE(), 1, null, null, null, null, null, 1, 1)

insert into ProgramaEstudios values('Acceso de las Trabajadoras al Poder Legislativo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Actuaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Administraci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Administraci+APM-n de la Construcci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Administraci+APM-n Estrat+AOk-gica Internacional', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Administraci+APM-n P+APo-blca con Especialidad en Gobiernos Locales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Administraci+APM-n P+APo-blica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Administraci+APM-n P+APo-blica con Especialidad en Gobiernos Locales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Administraci+APM-n P+APo-blica.', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('An+AOE-lisis de la Cultura', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Antrhopology', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Antropolog+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Antropolog+AO0-a Social', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Applied Ecology and Conservation', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Arquitectura', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Arquitectura y Asuntos Urbanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Arquitectura y Asuntos Urbanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Artes Pl+AOE-sticas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ASOCIACI+ANM-N  MEXICANA DE POBLACI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Asuntos Internacionales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ASUNTOS INTERNACIONALES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Asuntos Urbanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Biolog+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Biologia de la Conservacion', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Biologia de la Conservacionn', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Biology', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Centre de Recherche sur l''Am+AOk-rique Pr+AOk-hispanique', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Centro de Estudios Superiores del Noroeste', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Chicana and  Chicano Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CHICANA AND CHICANO STUDIES DEPARTMENT', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Chicano Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CHICANOS AND CHICANOS STUDIES DEPARTMENT', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIA DE LA COMUNICACI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIA DE LA EDUCACI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIA SOCIALES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIAS AGR+AM0-COLAS', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias de la Comunicaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias de la Comunicaci+APM-n Social', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias de la Educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIAS DE LA EDUCACI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias de la educaci+APM-nn', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias de la Salud', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIAS DE LA SALUD', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Econ+APM-micas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Econ+APM-micas  y Empresariales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Educativas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias para la Planificaci+APM-n de los Asentamientos Humanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Pol+AO0-ticas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Pol+AO0-ticas y Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIAS SOCIALES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Sociales Aplicadas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CIENCIAS SOCIALES CON ESPECIALIDAD EN ESTUDIOS LABORALES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias Sociales y Estudios Internacionales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ciencias socialess', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Cincias Sociales aplicadas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Comunicaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Comunicaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Comunicaci+APM-n Cultural e Identidad en Europa e Iberoamerica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Contabilidad', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('CONTABILIDAD Y ADMINISTRACI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Convenio COESPO-Guanajuato', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Convenio con el COESPO-Guanajuato', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('COOPERACI+ANM-N INTERNACIONAL ENTRE LA UNI+ANM-N EUROPEA Y AM+AMk-RICA LATINA', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Criminolog+AO0-a y Ciencias Forenses', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Cultural Changes in the Border', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Curso de actualizaci+APM-n de Derechos Humanos y Migraci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Curso internacional sobre calidad de vida de personas mayores: conceptos e instrumentos de an+AOE-lisis', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Demograf+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Deparment of  Hispanic Languages and Literatures', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('DEPARTAMENT OF POL+AM0-TICA SCIENCE', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Department of Government. Office of Career Services.', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('DEPERTMENT OF POL+AM0-TICA SCIENCE', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Derecho', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('DESARROLLO CULTURAL COMUNITARIO', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Desarrollo Humano', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Desarrollo humano', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Desarrollo Integral de la Familia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('DESARROLLO ORGANIZACIONAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Desarrollo Regional', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('DESARROLLO REGIONAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Desarrollo regionall', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('DESARROLLO REGIONALlll', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('DESARROLLO RURAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Desarrollo Urbano', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Development Education Program', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Dip+AFs-limado en poblaci+APM-n y desarrollo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Diplomado en estudios migratorios', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Diplomado en G+AOk-nero', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Diplomado en Gesti+APM-n Cultural', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Diplomado presencial y a distancia de la actualizaci+APM-n profesional', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Do Antropolog+AO0-a Social', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Docencia Universitaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado de Medicina', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Ciencias de la Educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en ciencias de la educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Ciencias Econ+APM-micas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Ciencias Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en ciencias sociales aplicadass', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Ciencias Sociales con Especialidad en Estudios Regionales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en ciencias socilales aplicadas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Estudios en Poblaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Estudios Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en Poblaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctorado en psicolog+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Doctrina Social de la Iglesia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ECOLOG+AM0-A Y DESARROLLO SUSTENTABLE', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Econom+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Econom+AO0-a Regional', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ECONOM+AM0-A REGIONAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Econom+AO0-a y Ciencias Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Econom+AO0-a y ciencias sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Econom+AO0-a y Gesti+APM-n del Cambio Tecnol+APM-gico', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Econom+AO0-a, Sociedad y Ecolog+AO0-a de las Californias', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('EDUCACI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Educaci+APM-n Especial', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('EDUCACI+ANM-N INTERNACIONAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Educaci+APM-n Superior', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Enfermer+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ENSE+ANE-ANZA SUPERIOR', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Escuela de Humanidades', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Espacios, Sociedad, Cultura de America Latina', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ESPECIALIDAD EN HISTORIA DE M+AMk-XICO', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estructura Econ+APM-mica y Econom+AO0-a del Desarrollo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudio Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ESTUDIOS CHICANOS', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Culturales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios de Estados Unidos y Canada', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios de Frontera', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios de G+AOk-nero en Educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios de Poblaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios en Desarrollo Global', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios en Poblaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Hist+APM-ricos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Interdisciplinarios', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('ESTUDIOS INTERNACIONALES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Latinoamericanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Migratorios', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Sociales y Human+AO0-sticos de Frontera', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios Socialess', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios y Proyectos Sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Estudios y proyectos sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Facultad de Contabilidad y Administraci+APM-n.', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Faculty of Intercultural Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Filosof+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Filosof+AO0-a con Especialidad  en administraci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Filosof+AO0-a con Orientaci+APM-n en Asuntos Urbanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Filosof+AO0-a con orientaci+APM-n en asuntos urbanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Filosof+AO0-a con orientaci+APM-n en Asuntos Urbanoss', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Filosof+AO0-a con Orientaci+APM-n en Trabajo Social', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Finanzas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Finanzas, Gobierno y Relaciones Internacionales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Formaci+APM-n de Seminaristas Scalabrinianos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Gender Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('G+AOk-nero', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Geograf+AO0-a F+AO0-sica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Geograf+AO0-a Humana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('GERENCIA P+ANo-BLICA MUNICIPAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Gesti+APM-n Cultural', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Gesti+APM-n y Pol+AO0-ticas Publicas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Gobierno  y Gesti+APM-n Local', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Gobierno y pol+AO0-ticas p+APo-blicas en M+AOk-xico', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Historia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('HISTORIA', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Historia de M+AOk-xico', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('HISTORIA REGIONAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('HORTICULTURA', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Importance and Future of Mexican Maquiladora Industry', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ingenier+AO0-a Ambiental', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Ingenier+AO0-a Mecatr+APM-nica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Intervenci+APM-n Pedag+APM-gica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Introducci+APM-n al Estudio de la Historia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Investigaci+APM-n Aplicada', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Investigaci+APM-n Cuantitativa de Educaci+APM-n Universitaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Investigaci+APM-n Pedag+APM-gica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Latin American Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('LATIN AMERICAN STUDIES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Letras y Comunicaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Licenciatura en Comunicaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Licenciatura en Historia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Administraci+APM-n P+APo-blica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('MAESTRIA EN ADMINISTRACION PUBLICA CON ESPECIALIDAD EN GOBIERNOS LOCALES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Administraci+APM-n P+APo-blicaa', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Administraci+APM-n P+APo-blicaaa', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Antropolog+AO0-a Social', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestria en asuntos Internacionales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestria en asuntos internacionaless', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Ciencias de la Educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Ciencias Educativas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Ciencias Sociales (Especialidad en Salud)', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Ciencias Sociales Aplicadas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Ciencias Sociales FLACSO SEDE M+AOk-xico', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestria en Demografia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestria en desarro urbano', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestria en Desarrollo Humano', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Desarrollo Regional', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Docencia Universitaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en docencia universitaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestria en Educaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en estudios  y proyectos sociales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en estudios Latinoamericanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Filosof+AO0-a de la Cultura', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestria en manejo de ecosistemas de zonas aridas.', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Manejo de Zonas Aridass', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Manejo de Zonas Fridas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en nutrici+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Planificaci+APM-n Urbana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Planificaci+APM-n Urbanaa', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Poblaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('MAESTR+AM0-A EN PROCESOS INDUSTRIALES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Salud p+APo-blica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en salud p+APo-blica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Zona Costera', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Maestr+AO0-a en Zona Costera.', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Manejo de Ecosistemas de Zonas Aridas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Manejo de Zonas Aridas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Master in Business Administration', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Master Internacional de Migraciones y Doctorado en Movilidad Humana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Master of Arts in Spanish', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('MASTERS DEGREE IN LATIN AMERICAN STUDIES', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Master''s in Public Policy', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Math Sciences and Engineering', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('M+AOk-dico Cirujano', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Medio Ambiente y Desarrollo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Mestr+AO0-a en Ciencias Sociales  (Especialidad en Salud)', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Metodolog+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Metodolog+AO0-a de la Ciencia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('METODOLOG+AM0-A DE LA CIENCIA', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Mexican +ACY- Chicano Images in Film', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Migraci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Migraci+APM-n e Multiculturalidad', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Migraci+APM-n y Religi+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Migraciones Internacionales y Derechos Humanos', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Movilidad Humana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Movilidades y Fronteras', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Museo de Historia Mexicana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Musicoterapia', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('NEGOCIOS Y ESTUDIOS ECON+ANM-MICOS', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Nutrici+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('NUTRICI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Orientaci+APM-n Familiar', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Planeaci+APM-n Agropecuaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Planeaci+APM-n Urbana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Planeaci+APM-n y Desarrollo Sustentable', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Planificaci+APM-n Urbana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Planificaci+APM-n urbana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Planificaci+APM-n y Desarrollo Urbana', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Poblaci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('POBLACI+ANM-N', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Poblaci+APM-n y Desarrollo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('POLITICA SCIENCE', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Pol+AO0-tica y Gesti+APM-n Social', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Political Science', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Pr+AOE-ctica Docente de Integraci+APM-n Cultural', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('PROGRAMA DE INTERCAMBIO BINACIONAL', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Programa de Movilidades y Fronteras', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Programa General  de Formaci+APM-n Policial del Estado', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Programa general de formaci+APM-n policial del estado', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Programa Integral  de Alto Liderazgo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Promoci+APM-n y Desarrollo Cultural', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Psicolog+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('PSICOLOG+AM0-A', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('PSICOLOG+AM0-A DE LA SALUD', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Psicolog+AO0-as', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Public Policy', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('quitar', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Relaciones Industriales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Relaciones industriales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Relaciones Internacionales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Salud Mental', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Salud Ocupacional', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Salud P+APo-blica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Salud p+APo-blica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Salud y Envejecimiento', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Second Year Medical Students', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Seminario de Cultura Popular', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Seminario de Patrimonio Cultural', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Seminario Decentralizaci+APM-n y Desarrollo Local', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Sensibilizaci+APM-n ante la Violencia Dom+AOk-stica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Social Sciences and International Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Social Sciences and International Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Social Studies and International Studies', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Social Studies and International Studiess', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Sociolog+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Sociolog+AO0-a', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Sociolog+AO0-a Pol+AO0-tica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Sociolog+AO0-a Rural', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Sociolog+AO0-aa', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Sonas Aridas', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Southwestern College', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('TALLER DE INVESTIGACI+ANM-N EDUCATIVA', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Taller Sobre Migraci+APM-n y Desarrollo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('T+AOk-cnico Superior en Procesos de Producci+APM-n', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Tecnolog+AO0-a de Materiales', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Teologado', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Traba', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Trabajo Social', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Tratado de libre comercio', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Tratados de Libre Comercio', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Turismo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('U.S Latin Studies Program', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('U.S Mexican Border', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Urban Design', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Urbanismo', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Valuaci+APM-n Inmobiliaria', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Verano de Investigaci+APM-n Cient+AO0-fica', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Violencia  Familiar', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Vivienda', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('Women''s Rights and Citizenship in Latin America', GETDATE(), GETDATE(), 1, 1, 1)
insert into ProgramaEstudios values('zonas +AOE-ridaS', GETDATE(), GETDATE(), 1, 1, 1)

insert into TipoReportes values('Cuaderno de trabajo', GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoReportes values('Reporte t�cnico', GETDATE(), GETDATE(), 1, 1, 1)

insert into NivelEstudios values('Licenciatura', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Maestr�a', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Doctorado', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Posdoctorado', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Especialidad', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Diplomado', GETDATE(), GETDATE(), 1, 1, 1)

insert into TipoResenas values('Nota cr�tica', GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoResenas values('Rese�a bibliogr�fica', GETDATE(), GETDATE(), 1, 1, 1)

--Las Ramas son del sector economico
--Sector 21=Servicos Profesiones cientificos y tecnologicos
insert into Ramas values('Escuelas de educaci�n basica media y especial', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Escuelas de educaci�n postbachillerato no universitaria', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Escuelas de educaci�n superior', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Escuelas comerciales de computaci�n y capacitaci�n para ejecutivos', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Escuelas de oficios', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Servicios de apoyo a la educaci�n', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Servicios legales', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Servicios de contabilidad auditoria y servicios relacionados', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Servicios de arquitectura ingieneria y actividades relacionadas', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Otros servicos profesionales y tecnicos', GETDATE(), GETDATE(), 1, 21, 1, 1)
insert into Ramas values('Servicios de consultoria administrativa cientifica y tecnica', GETDATE(), GETDATE(), 1, 21, 1, 1)

--Son las Clases de las Ramas
-- Rama=11=Servicios de consultoria administrativa cientifica y tecnica
-- Rama=7 servicios legales
insert into Clases values('Servicios de Consultoria en Administracion', GETDATE(), GETDATE(), 1, 11, 1, 1)
insert into Clases values('Servicios de consultoria en medio ambiente', GETDATE(), GETDATE(), 1, 11, 1, 1)
insert into Clases values('Otros serivicios de consultoria en el ambiente', GETDATE(), GETDATE(), 1, 11, 1, 1)
insert into Clases values('Escuelas del publico privado dedicadas a la ense�aza de oficios', GETDATE(), GETDATE(), 1, 11, 1, 1)
insert into Clases values('Servicios de apoyo a la educacion', GETDATE(), GETDATE(), 1, 11, 1, 1)
insert into Clases values('Bufetes juridicos', GETDATE(), GETDATE(), 1, 7, 1, 1)
insert into Clases values('Notarias publicas', GETDATE(), GETDATE(), 1, 7, 1, 1)
insert into Clases values('Servicios de apoyo para efectuar tramites leglaes', GETDATE(), GETDATE(), 1, 7, 1, 1)

insert into TipoApoyos values('Formacion acad�mica', GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoApoyos values('Proyecto cient�fico', GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoApoyos values('Desarrollo tecnol�gico', GETDATE(), GETDATE(), 1, 1, 1)

insert into SubprogramaConacyts values('Fondo sectorial', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('Beca', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('Est�mulo fiscal', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('C�tedras posdoctorales', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('Est�mulo SNI', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('Avance', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('C�tedras patrimoniales', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('Repatriaci�n/Consolidaci�n', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('Fondo ciencia b�sica', GETDATE(), GETDATE(), 1, 1, 1)
insert into SubprogramaConacyts values('Fondo mixto', GETDATE(), GETDATE(), 1, 1, 1)

insert into TipoParticipacionOrganos values('Miembro',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoParticipacionOrganos values('Asesor',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoParticipacionOrganos values('Evaluador',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoParticipacionOrganos values('Jurado',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoParticipacionOrganos values('Otro',GETDATE(), GETDATE(), 1, 1, 1)

insert into EstatusProyectos values('Vigente', GETDATE(), GETDATE(), 1, 1, 1)
insert into EstatusProyectos values('Terminado', GETDATE(), GETDATE(), 1, 1, 1)
insert into EstatusProyectos values('Cancelado', GETDATE(), GETDATE(), 1, 1, 1)

insert into FondoConacyts values('CONACyT Ciencia B�sica', GETDATE(), GETDATE(), 1, 1, 1)
insert into FondoConacyts values('CONACyT Fondo Mixto', GETDATE(), GETDATE(), 1, 1, 1)
insert into FondoConacyts values('CONACyT Fondo Sectorial', GETDATE(), GETDATE(), 1, 1, 1)

insert into TipoArchivos values('Carta de la Revista',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Carta de la Editorial',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Carta de Aceptaci�n',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Copia del producto',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Portada',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Contraportada',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Indice',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Introducci�n',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Ultima p�gina',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Carta de aprobaci�n de la Tesis',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Programa del Evento',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Invitaci�n',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Reporte de Actividades',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Boletin',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Carta de la instituci�n',GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoArchivos values('Posgrado Colef',GETDATE(), GETDATE(), 1, 1, 1)

insert into VinculacionAPyDes values('Tesis orientada al Desarrollo Local', GETDATE(), GETDATE(), 1, 1, 1)
insert into VinculacionAPyDes values('Tesis Orientada a la Contribuci�n del Bienestar social', GETDATE(), GETDATE(), 1, 1, 1)
insert into VinculacionAPyDes values('Tesis orientada al desarrollo de grupos vulnerables', GETDATE(), GETDATE(), 1, 1, 1)
insert into VinculacionAPyDes values('Tesis orientada a las pol�ticas p�blicas', GETDATE(), GETDATE(), 1, 1, 1)
insert into VinculacionAPyDes values('Tesis orientada al desarrollo socioecon�mico', GETDATE(), GETDATE(), 1, 1, 1)

--Valores de prueba
insert into Niveles values('Nivel 1',GETDATE(), GETDATE(), 1, null, null, 1, 1);
insert into Niveles values('Nivel 2',GETDATE(), GETDATE(), 1, null, null, 1, 1);
insert into Niveles values('Nivel 3',GETDATE(), GETDATE(), 1, null, null, 1, 1);
insert into Niveles values('Nivel 4',GETDATE(), GETDATE(), 1, null, null, 1, 1);
insert into Niveles values('Nivel 5',GETDATE(), GETDATE(), 1, null, null, 1, 1);

--Valores de prueba
insert into Editoriales values('Editorial 1',GETDATE(), GETDATE(), 1, 1, 12, 1, 1)
insert into Editoriales values('Editorial 2',GETDATE(), GETDATE(), 1, 2, 13, 1, 1)
insert into Editoriales values('Editorial 3',GETDATE(), GETDATE(), 1, 3, 14, 1, 1)

--Valores de prueba
insert into Diplomados values('Diplomado 1',GETDATE(), GETDATE(), 1, 1, 1)
insert into Diplomados values('Diplomado 2',GETDATE(), GETDATE(), 1, 1, 1)
insert into Diplomados values('Diplomado 3',GETDATE(), GETDATE(), 1, 1, 1)

INSERT Investigadores VALUES('Dec 15 2008 12:00AM', 'Dec 14 2008 12:00AM', 'Expediente SNI' ,'Produccion','Academico','CVU', 'Aug 18 2009  9:23AM', 'Aug 18 2009  9:23AM', 1, 2, 1, 1)
INSERT EstadoInvestigadores VALUES('Jan  5 2009 12:00AM','Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,1,1,1,1)
INSERT CargoInvestigadores VALUES('Feb  2 2009 12:00AM','Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,1,3,6,1,1,1)
INSERT CategoriaInvestigadores VALUES('Feb  2 2009 12:00AM','Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,1,1,1,1)
INSERT GradoAcademicoInvestigadores VALUES('Jan  5 2009 12:00AM','Migracion en la frontera norte de Mexico','Ciencias Sociales',null,'Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,1,1,1,1)
INSERT SNIInvestigadores VALUES('Feb  2 2009 12:00AM','Feb  2 2010 12:00AM','Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,2,1,1,1)