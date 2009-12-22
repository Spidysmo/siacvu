IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
DROP VIEW [dbo].[Usuarios]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[TesisPosgrados]'))
DROP VIEW [dbo].[TesisPosgrados]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[CursoInvestigadores]'))
DROP VIEW [dbo].[CursoInvestigadores]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[Convenios]'))
DROP VIEW [dbo].[Convenios]
GO

CREATE VIEW Usuarios AS
SELECT     18 AS Id, 'Maria Elena' AS Nombre, 'Melendez' AS ApellidoPaterno, 'Fernandez' AS ApellidoMaterno, 'elena' AS UsuarioNombre, 'elena' AS Clave, 
                      'administrador@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1975-07-29' AS FechaNacimiento, '2005-11-21' AS FechaIngreso, 0 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     17 AS Id, 'Elvira Gloria' AS Nombre, 'Canales' AS ApellidoPaterno, 'Mapula' AS ApellidoMaterno, 'cintia' AS UsuarioNombre, 'cintia' AS Clave, 
                      'dgaa@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1987-01-14' AS FechaNacimiento, '1999-03-07' AS FechaIngreso, 0 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     16 AS Id, 'Alfredo' AS Nombre, 'Hualde' AS ApellidoPaterno, 'Alfaro' AS ApellidoMaterno, 'invhualde' AS UsuarioNombre, 'hualde' AS Clave, 
                      'investigador15@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     15 AS Id, 'Maria del Rocio' AS Nombre, 'Barajas' AS ApellidoPaterno, 'Escamilla' AS ApellidoMaterno, 'invbarajas' AS UsuarioNombre, 
                      'barajas' AS Clave, 'investigador14@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 
                      1 AS Investigador, 1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     14 AS Id, 'Jorge Agustin' AS Nombre, 'Bustamante' AS ApellidoPaterno, 'Fernandez' AS ApellidoMaterno, 'invbustamante' AS UsuarioNombre, 
                      'bustamante' AS Clave, 'investigador13@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso,
                       1 AS Investigador, 1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     13 AS Id, 'Rodolfo' AS Nombre, 'Cruz' AS ApellidoPaterno, 'Pi�eiro' AS ApellidoMaterno, 'invcruz' AS UsuarioNombre, 'cruz' AS Clave, 
                      'investigador12@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     12 AS Id, 'Teresa Elizabeth' AS Nombre, 'Cueva' AS ApellidoPaterno, 'Luna' AS ApellidoMaterno, 'invCueva' AS UsuarioNombre, 'cueva' AS Clave, 
                      'investigador11@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     11 AS Id, 'Carlos Alfonso' AS Nombre, 'De la Parra' AS ApellidoPaterno, 'Renteria' AS ApellidoMaterno, 'invrenteria' AS UsuarioNombre, 
                      'renteria' AS Clave, 'investigador10@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 
                      1 AS Investigador, 1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     10 AS Id, 'Laura' AS Nombre, 'Flamand' AS ApellidoPaterno, 'Gomez' AS ApellidoMaterno, 'invflamand' AS UsuarioNombre, 'flamand' AS Clave, 
                      'investigador9@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     9 AS Id, 'Tonatiuh' AS Nombre, 'Guill�n' AS ApellidoPaterno, 'L�pez' AS ApellidoMaterno, 'invguillen' AS UsuarioNombre, 'guillen' AS Clave, 
                      'investigador8@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     8 AS Id, 'Redi' AS Nombre, 'Gomis' AS ApellidoPaterno, 'Hern�ndez' AS ApellidoMaterno, 'invgomis' AS UsuarioNombre, 'gomis' AS Clave, 
                      'investigador7@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     7 AS Id, 'Silvia' AS Nombre, 'L�pez' AS ApellidoPaterno, 'Estrada' AS ApellidoMaterno, 'invflamand' AS UsuarioNombre, 'flamand' AS Clave, 
                      'investigador6@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     6 AS Id, 'S�rah Eva' AS Nombre, 'Martinez' AS ApellidoPaterno, 'Pell�grini' AS ApellidoMaterno, 'invmartinez' AS UsuarioNombre, 'martinez' AS Clave, 
                      'investigador5@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1970-06-05' AS FechaNacimiento, '2000-04-03' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     5 AS Id, 'Jorge H�ctor' AS Nombre, 'Carrillo' AS ApellidoPaterno, 'Viveros' AS ApellidoMaterno, 'invcarrillo' AS UsuarioNombre, 'carrillo' AS Clave, 
                      'investigador4@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1975-08-25' AS FechaNacimiento, '2002-08-13' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     4 AS Id, 'Sergio' AS Nombre, 'Pe�a' AS ApellidoPaterno, 'Medina' AS ApellidoMaterno, 'invmedina' AS UsuarioNombre, 'medina' AS Clave, 
                      'investigador3@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1975-08-25' AS FechaNacimiento, '2002-08-13' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     3 AS Id, 'Jos� Mar�a' AS Nombre, 'Ramos' AS ApellidoPaterno, 'Garcia' AS ApellidoMaterno, 'invramos' AS UsuarioNombre, 'ramos' AS Clave, 
                      'investigador2@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1975-08-25' AS FechaNacimiento, '2002-08-13' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     2 AS Id, 'Gudelia' AS Nombre, 'Rangel' AS ApellidoPaterno, 'G�mez' AS ApellidoMaterno, 'invrangel' AS UsuarioNombre, 'rangel' AS Clave, 
                      'investigador1@colef.mx' AS CorreoElectronico, 'M' AS Sexo, '1975-08-25' AS FechaNacimiento, '2002-08-13' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT	   1 AS Id, 'Administrador' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno,
					  'administrador' AS UsuarioNombre, 'password' AS Clave, 'administrador@colef.mx' AS CorreoElectronico,
					  'M' AS Sexo, '1975-07-29' AS FechaNacimiento, '2005-11-21' AS FechaIngreso, 0 AS Investigador, 1 AS Activo,
					  'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'ZXCV456123789TJ' AS CURP, 'ZXCV784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT     50 AS Id, 'Mario' AS Nombre, 'Chavez' AS ApellidoPaterno, 'Cardenas' AS ApellidoMaterno, 'mario.chavez' AS UsuarioNombre, 'password' AS Clave, 
                      'investigador1@colef.mx' AS CorreoElectronico, 'H' AS Sexo, '1975-08-25' AS FechaNacimiento, '2002-08-13' AS FechaIngreso, 1 AS Investigador, 
                      1 AS Activo, 'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'CACM456123789TJ' AS CURP, 'CACM784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
UNION
SELECT	   51 AS Id, 'DGAA' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno,
					  'dgaa' AS UsuarioNombre, 'password' AS Clave, 'dgaa@colef.mx' AS CorreoElectronico,
					  'H' AS Sexo, '1987-01-14' AS FechaNacimiento, '1999-03-07' AS FechaIngreso, 0 AS Investigador, 1 AS Activo, 
					  'Conocida' AS Direccion, '664 951 1236' AS Telefono, 'Casado' AS EstadoCivil, 'QWERTY96321' AS DocumentosIdentidad,
					  'CACM456123789TJ' AS CURP, 'CACM784512' AS RFC, 'CELPRO142536' AS CedulaProfesional, 'Mexicana' AS Nacionalidad,
					  'PRT456' AS CodigoRH
GO

--Valores de prueba para la vista de Alumnos
--VinculacionApyDFk 1 => Tesis orientada al Desarrollo Local
--FormaParticipacionFk 1 => Editor
--ProgramaEstudioFk 47 => Ciencias Educativas
--GradoAcademicoFk 1 => Licenciatura
CREATE VIEW TesisPosgrados AS
SELECT		2 AS Id, 'Tesis Posgrado 2' AS Titulo, 'Natalia Zamudio Santos' AS NombreAlumno, 'Feb  2 2009 12:00AM' AS FechaGrado,  
			1 AS VinculacionApyDFk, 1 AS FormaParticipacion, 47 AS ProgramaEstudioFk, 1 AS GradoAcademicoFk, 274 AS InstitucionFk,
			1 AS NivelEstudioFk, 17 AS SectorFk, 108 AS OrganizacionFk , 298 AS Nivel2Fk,1 AS AreaFk, 2 AS DisciplinaFk,
			9 AS SubdisciplinaFk, 2 AS InvestigadorFk
UNION
SELECT		1 AS Id, 'Tesis Posgrado 1' AS Titulo, 'Alejandro Vald�z Ru�z' AS NombreAlumno, 'Feb  2 2009 12:00AM' AS FechaGrado,
			1 AS VinculacionApyDFk, 1 AS FormaParticipacion, 47 AS ProgramaEstudioFk, 1 AS GradoAcademicoFk, 274 AS InstitucionFk,
			1 AS NivelEstudioFk, 17 AS SectorFk, 108 AS OrganizacionFk , 298 AS Nivel2Fk,1 AS AreaFk, 2 AS DisciplinaFk,
			9 AS SubdisciplinaFk, 1 AS InvestigadorFk
GO

--Valores de prueba para la vista de CursosInvestigadores
--ProgramaEstudioFk 47 => Ciencias Educativas
--InstitucionFk 14 => UABC Mexicali
CREATE VIEW CursoInvestigadores AS
SELECT		2 AS Id, 'Teor�a econ�mica y regional' AS Nombre, 'Aguilar Ben�tez Ismael' AS NombreInvestigador, 'Feb  2 2009 12:00AM' AS FechaInicial,
			'Feb  27 2009 12:00AM' AS FechaFinal, 60 AS NumeroHoras, 47 AS ProgramaEstudioFk, 274 AS InstitucionFk, 1 AS NivelEstudioFk,
			17 AS SectorFk, 108 AS OrganizacionFk , 298 AS Nivel2Fk,1 AS AreaFk, 2 AS DisciplinaFk, 9 AS SubdisciplinaFk,
			2 AS InvestigadorFk
UNION
SELECT		1 AS Id, 'Teor�as del desarrollo' AS Nombre, 'Mart�nez Pell�grini S�rah Eva' AS NombreInvestigador, 'Feb  2 2009 12:00AM' AS FechaInicial,
			'Feb  27 2009 12:00AM' AS FechaFinal, 30 AS NumeroHoras, 47 AS ProgramaEstudioFk, 274 AS InstitucionFk, 1 AS NivelEstudioFk,
			17 AS SectorFk, 108 AS OrganizacionFk , 298 AS Nivel2Fk,1 AS AreaFk, 2 AS DisciplinaFk, 9 AS SubdisciplinaFk,
			1 AS InvestigadorFk
GO

--Valores para la vista de convenios
CREATE VIEW Convenios AS
SELECT		2 AS Id, 'Centro de Investigaci�n Cient�fica y de Educaci�n Superior de Ensenada' AS Nombre, 
			'Feb  2 2009 12:00AM' AS FechaFirma, 'Feb  27 2009 12:00AM' AS FechaConclusion, 
			'' AS TerminoReferencia, 'Ninguno' AS ProductoComprometido
UNION
SELECT		1 AS Id, 'Centro de Investigaci�n y Desarrollo Tecnol�gico en Electroqu�mica' AS Nombre, 
			'Feb  2 2009 12:00AM' AS FechaFirma, 'Feb  27 2009 12:00AM' AS FechaConclusion, 
			'' AS TerminoReferencia, 'Ninguno' AS ProductoComprometido
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
INSERT UsuarioRol VALUES(4, 2)
INSERT UsuarioRol VALUES(5, 2)
INSERT UsuarioRol VALUES(6, 2)
INSERT UsuarioRol VALUES(7, 2)
INSERT UsuarioRol VALUES(8, 2)
INSERT UsuarioRol VALUES(9, 2)
INSERT UsuarioRol VALUES(10, 2)
INSERT UsuarioRol VALUES(11, 2)
INSERT UsuarioRol VALUES(12, 2)
INSERT UsuarioRol VALUES(13, 2)
INSERT UsuarioRol VALUES(14, 2)
INSERT UsuarioRol VALUES(15, 2)
INSERT UsuarioRol VALUES(16, 2)
INSERT UsuarioRol VALUES(17, 3)
INSERT UsuarioRol VALUES(18, 1)
INSERT UsuarioRol VALUES(51, 3)
INSERT UsuarioRol VALUES(50, 2)

insert into ConsejoComisiones values('Consejo Acad�mico', 2, 0, GETDATE(), GETDATE(), 1, 1, 1);
insert into ConsejoComisiones values('Comisi�n Dictaminadora', 2, 1, GETDATE(), GETDATE(), 1, 1, 1);
insert into ConsejoComisiones values('Comisiones Evaluadoras Departamentales', 2, 1, GETDATE(), GETDATE(), 1, 1, 1);
insert into ConsejoComisiones values('Comisiones Acad�micas de Programas de Posgrado', 2, 1, GETDATE(), GETDATE(), 1, 1, 1);
insert into ConsejoComisiones values('Consejo Editorial', 2, 1, GETDATE(), GETDATE(), 1, 1, 1);

/*
insert into USEGs values('Cartograf�a Digital',GETDATE(), GETDATE(), 1, 1, 1);
insert into USEGs values('Geo-Estad�stica',GETDATE(), GETDATE(), 1, 1, 1);
insert into USEGs values('An�lisis Espacial',GETDATE(), GETDATE(), 1, 1, 1);
*/
insert into DirigidoAs values('Empresarios', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Estudiantes', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Funcionarios', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('P�blico en General', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Sector Acad�mico', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Sector Privado', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Sector P�blico', GETDATE(), GETDATE(), 1, 1, 1)
insert into DirigidoAs values('Sector Social', GETDATE(), GETDATE(), 1, 1, 1)

insert into EstatusFormacionAcademicas values('Cr�dito terminado',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstatusFormacionAcademicas values('Grado obtenido',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstatusFormacionAcademicas values('Truncado',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstatusFormacionAcademicas values('En proceso',GETDATE(), GETDATE(), 1, 1, 1);
/*
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
*/
insert into Monedas values('Pesos',GETDATE(), GETDATE(), 1, 1, 1);
insert into Monedas values('Dolares',GETDATE(), GETDATE(), 1, 1, 1);
/*
insert into ProductoAcademicos values('Libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Cap�tulo en libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Art�culo',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Ponencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Tesis de maestr�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoAcademicos values('Tesis de doctorado',GETDATE(), GETDATE(), 1, 1, 1);

insert into ProductoDerivados values('Con arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProductoDerivados values('Sin arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
*/
insert into TipoEstancias values('Acad�mica',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEstancias values('Sab�tica',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEstancias values('Postdoctoral',GETDATE(), GETDATE(), 1, 1, 1);
/*
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
*/

insert into TipoProyectos values('Consultor�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoProyectos values('Investigaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoProyectos values('Planes de trabajo',GETDATE(), GETDATE(), 1, 1, 1);
/*
insert into IdentificadorLibros values('Publicado',GETDATE(), GETDATE(), 1, 1, 1);
insert into IdentificadorLibros values('Editado',GETDATE(), GETDATE(), 1, 1, 1);
insert into IdentificadorLibros values('Traducido',GETDATE(), GETDATE(), 1, 1, 1);
insert into IdentificadorLibros values('Compilaci�n',GETDATE(), GETDATE(), 1, 1, 1);

insert into Proyectos values('El asma in Tijuana: multiple medical systems (El asma en Tijuana: m�ltiples sistemas m�dicos)',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Trayectoria del crecimiento urbano y evaluaci�n de la planeaci�n en ciudades intermedias de la frontera norte de M�xico: Piedras Negras, Matamoros y Reynosa',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('La reforma municipal en M�xico. Agenda para una reforma legislativa',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Prevenci�n y oportuna detecci�n de c�ncer cervicouterino para las mixtecas migrantes de Oaxaca a Baja California',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Antropolog�a del arte ind�gena transfronterizo. La identidad est�tico religiosa en la ritualidad contempor�nea',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Un an�lisis comparativo de la interacci�n en los corredores fronterizos Vancouver-Seatle y San Diego-Tijuana',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Los que no se rindieron: las actividades revolucionarias magonistas en la region fronteriza M�xico-Estados Unidos, 1910-1913',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Identidad, racismos y estereotipos en la frontera M�xico-Estados Unidos',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('United State-Mexico border communities in the Nafta Era',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('El papel de las normas ambientales  y las estretegias competitivas en el cuidado ambiental  de la industria en M�xico.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Hacia una pol�tica de articulaci�n entre los perfiles educativos  y las necesidades del desarrollo regional. (Etapa III)',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Las remesas de migrantes mexicanos en Estados Unidos y su impacto en la econom�a mexicana',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Estudio demogr�fico retrospectivo: movilidad, empleo y familia en M�xico.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('El envejecimiento en M�xico: la siguiente crisis de la transici�n demogr�fica',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Condiciones de salud y bienestar de la poblaci�n envejecida en la Ciudad de M�xico.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Uso y significado de la casa como lugar de trabajo y relaciones de g�nero en trabajadores por cuenta propia en el hogar de Tijuana',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Migraci�n, empleo y vivienda en los municipios y condados de la frontera internacional Estados Unidos-M�xico',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Programa de salud reproductiva',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Construyendo atrav�s de las fronteras:  consolidaci�n del consorcio transfronterizo para la acci�n y la investigaci�n sobre g�nero y salud reproductiva en la frontera M�xico-Estados Unidos',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Grupo de intercambio acad�mico sobre salud reproductiva',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Migraci�n internacional, riesgos asociados al cruce de la frontera y programas locales de ayuda al migrante.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Encuesta sobre Migraci�n en la Frontera Norte de M�xico (Fase V)',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Estudio para impulsar el mejoramiento de la calidad del empleo en la industria maquiladora de exportaci�n.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Inmigraci�n laboral de latinoam�rica en Espa�a: sectores de ocupaci�n, perfiles  y redes sociales.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('La transformaci�n de la industria automotriz y del vestido: comparaci�n entre M�xico, Estados Unidos y Canad�.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Integraci�n norteamericana y desarrollo: impactos del tratado de libre comercio en la reestructuraci�n industrial y el empleo.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Producci�n de computadoras personales en M�xico y su articulaci�n con la producci�n global: una valoraci�n de su estado actual y su futuro potencial.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Desarrollo del internet y el ecomercio en M�xico',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Migraci�n y religi�n: an�lisis de la relaci�n entre las afiliaciones religiosas y la redefinici�n identitaria de los migrantes mexicanos en el Sur de California',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Actualizaci�n del m�dulo urbano del programa regional de desarrollo del corredor costero Tijuana-Ensenada',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Uso y manejo sustentable del agua en el medio urbano de la frontera norte de M�xico',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Turismo, migraci�n y empleo en el municipio de playas de Rosarito, B.C.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Planeaci�n de una estrategia de desarrollo sustentable para las comunidades locales en la reserva de la bi�sfera el Pinacate y el gran Desierto del Altar.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Elaboraci�n-reformulaci�n del Plan de Desarrollo Urbano en  Nuevo Laredo',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('La movilidad laboral geogr�fica como recurso social en la cuenca carbon�fera de Coahuila.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Un grito silenciado: mujer madre en la frontera Este M�xicoamericana',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Apostando a un sue�o: la experiencia de las mujeres que van a parir a Estados Unidos',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Crecimiento, planeaci�n y gesti�n urbana de dos metr�polis del Noreste. Hacia un modelo alternativo  para Monterrey y Saltillo.',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Estudio comparativo de la urbanizaci�n popular en ciudades de la frontera tamaulipeca',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Zonas de alto riesgo, regeneraci�n urbana y reactivaci�n social: la zona poniente de Cd. Ju�rez, de cara a los retos de competitividad internacional del centro urbano',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
insert into Proyectos values('Estudio de opini�n p�blica en Ojinaga Chihuahua',0,GETDATE(),GETDATE(),GETDATE(),0,GETDATE(),0,null,null,null,null,null,null,null,0,GETDATE(),0,null,0,GETDATE(),GETDATE(),1,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,1,1,1)
*/

insert into MedioImpresos values('Peri�dico',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Tabloide',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Revista',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into MedioElectronicos values('Radio',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Televisi�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Internet',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Video',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);
/*
insert into Generos values('Entrevista',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Columna',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Art�culo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Comentario',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Mesa de an�lisis',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);
*/

insert into TipoOrganos values('Comit� de Evaluaci�n (CONACyT)',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Consejo Editorial',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Comit�s Evaluadores (Premios)',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Consejos (Consultivos)',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Comisiones',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Comit�s (Sub-Comit�s)',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Grupos de trabajo',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoDictamenes values('Art�culo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Proyecto de investigaci�n CONACyT',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoDistinciones values('Reconocimientos',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('Premios',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('Becas para estancias acad�micas',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('C�tedras acad�micas/Patrimoniales',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoEventos values('Evento Estrat�gico (El Colef)',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Congreso',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Coloquio',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Foro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Conferencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Simposium',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Seminario',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Taller',GETDATE(), GETDATE(), 1, 1, 1);
/*
insert into TipoFinanciamientos values('Fiscal',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Complementario',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Financiamiento externo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Mixto',GETDATE(), GETDATE(), 1, 1, 1);
*/

insert into Departamentos values('Departamento de Estudios Culturales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de Estudios de Administraci�n P�blica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de Estudios de Poblaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de Estudios Econ�micos',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de Estudios Sociales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Departamento de Estudios Urbanos y del Medio Ambiente',GETDATE(), GETDATE(), 1, 1, 1);

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

insert into Puestos values('Investigador',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Presidente',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Secretario General Acad�mico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Secretario General de Planeaci�n y Desarrollo Institucional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director General de Vinculaci�n Institucional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director General de Asuntos Acad�micos',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director General de Docencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director Regional Noroeste ',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director del Departamento de Estudios de Administraci�n P�blica',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director del Departamento de Estudios Culturales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director del Departamento de Estudios Econ�micos',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director del Departamento de Estudios Sociales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director del Departamento de Estudios de Poblaci�n ',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Director del Departamento de Estudios Urbanos y del Medio Ambiente',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Coordinador del Doctorado en Ciencias Sociales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Coordinador de la Maestr�a en Desarrollo Regional ',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Coordinador de la Maestr�a en Demograf�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Coordinador de la Maestr�a en Econom�a Aplicada',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Coordinador de la Maestr�a en Administraci�n Integral y del Medio Ambiente',GETDATE(), GETDATE(), 1, 1, 1);
insert into Puestos values('Coordinador de la Maestr�a en Estudios Socioculturales',GETDATE(), GETDATE(), 1, 1, 1);


insert into SNIs values('No pertenece',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Candidato',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Emerito',GETDATE(), GETDATE(), 1, 1, 1);

--Tipo participacion capitulos
insert into TipoParticipaciones values('Autor', 1, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Traductor', 1, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Inventor', 1, GETDATE(), GETDATE(), 1, 1, 1);

--Tipo participacion eventos
insert into TipoParticipaciones values('Organizador', 2, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Co-organizador', 2, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Conferencista magistral', 2, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Ponente', 2, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Participante', 2, GETDATE(), GETDATE(), 1, 1, 1);

--Tipo participacion participacion en medios
insert into TipoParticipaciones values('Presentaci�n de libro', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Presentaci�n resultados de investigaci�n', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Peri�dico/Diario', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Conferencias', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Demostraciones', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Ferias Cient�ficas y Tecnol�gicas', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Ferias Empresariales', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Medios Impresos', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Radio', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Seminarios', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Simposium', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Talleres', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Teatro', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Televisi�n', 3, GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Video', 3, GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoActividades values('Investigaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoActividades values('Docencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoActividades values('Vinculaci�n',GETDATE(), GETDATE(), 1, 1, 1);
/*
insert into TipoParticipantes values('Persona f�sica',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipantes values('Investigador',GETDATE(), GETDATE(), 1, 1, 1);
*/

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

insert into LineaTematicas values('Ambiente y Desarrollo',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('Desarrollo Econ�mico',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('Desarrollo Regional',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('Estudios Culturales',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('Estudios de la Industria y el Trabajo',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('Migraci�n',GETDATE(), GETDATE(), 1, 1, 1)
insert into LineaTematicas values('Poblaci�n',GETDATE(), GETDATE(), 1, 1, 1)

insert into AreaTematicas values('Ambiente y Recursos Naturales', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into AreaTematicas values('Desarrollo regional y Medio Ambiente', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into AreaTematicas values('Gesti�n Ambiental ', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into AreaTematicas values('Recursos Naturales', GETDATE(), GETDATE(), 1, 1, 1, 1)
insert into AreaTematicas values('Econom�a y sociedad', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into AreaTematicas values('Evaluaci�n de Pol�ticas Econ�micas', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into AreaTematicas values('Integraci�n Econ�mica Fronteriza M�xuco-EU', GETDATE(), GETDATE(), 1, 2, 1, 1)
insert into AreaTematicas values('Administraci�n P�blica y Finanzas', GETDATE(), GETDATE(), 1, 3, 1, 1)
insert into AreaTematicas values('Desarrollo Regional y Restructuraci�n Productiva', GETDATE(), GETDATE(), 1, 3, 1, 1)
insert into AreaTematicas values('Estudios Urbanos', GETDATE(), GETDATE(), 1, 3, 1, 1)
insert into AreaTematicas values('Gobiernos Locales y Gesti�n Binacional', GETDATE(), GETDATE(), 1, 3, 1, 1)
insert into AreaTematicas values('Instituciones Pol�ticas y Procesos Sociales', GETDATE(), GETDATE(), 1, 3, 1, 1)
insert into AreaTematicas values('Pol�ticas P�blicas y Desarrollo Regional', GETDATE(), GETDATE(), 1, 3, 1, 1)
insert into AreaTematicas values('Estudio de las Identidades', GETDATE(), GETDATE(), 1, 4, 1, 1)
insert into AreaTematicas values('Estudios Culturales', GETDATE(), GETDATE(), 1, 4, 1, 1)
insert into AreaTematicas values('Estudios de los Procesos hist�ricos', GETDATE(), GETDATE(), 1, 4, 1, 1)
insert into AreaTematicas values('Historia y Cultura', GETDATE(), GETDATE(), 1, 4, 1, 1)
insert into AreaTematicas values('Cambio T�cnico y Organizaci�n Industrial', GETDATE(), GETDATE(), 1, 5, 1, 1)
insert into AreaTematicas values('Estudios del Trabajo e Industriales', GETDATE(), GETDATE(), 1, 5, 1, 1)
insert into AreaTematicas values('Estudios del Trabajo', GETDATE(), GETDATE(), 1, 5, 1, 1)
insert into AreaTematicas values('Estudios del Trabajo e Industriales', GETDATE(), GETDATE(), 1, 5, 1, 1)
insert into AreaTematicas values('Estudios del Trabajo e Industriales', GETDATE(), GETDATE(), 1, 5, 1, 1)
insert into AreaTematicas values('Mercados de Trabajo y Fuerza Laboral', GETDATE(), GETDATE(), 1, 5, 1, 1)
insert into AreaTematicas values('Estudios Sociales de Migraci�n', GETDATE(), GETDATE(), 1, 6, 1, 1)
insert into AreaTematicas values('Migraci�n Internacional e Interna', GETDATE(), GETDATE(), 1, 6, 1, 1)
insert into AreaTematicas values('Envejecimiento', GETDATE(), GETDATE(), 1, 7, 1, 1)
insert into AreaTematicas values('Familia y Salud', GETDATE(), GETDATE(), 1, 7, 1, 1)

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

insert into NivelEstudios values('Licenciatura', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Maestr�a', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Doctorado', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Posdoctorado', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Especialidad', GETDATE(), GETDATE(), 1, 1, 1)
insert into NivelEstudios values('Diplomado', GETDATE(), GETDATE(), 1, 1, 1)

insert into TipoApoyos values('Formacion acad�mica', GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoApoyos values('Proyecto cient�fico', GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoApoyos values('Desarrollo tecnol�gico', GETDATE(), GETDATE(), 1, 1, 1)
insert into TipoApoyos values('Nuevos negocios', GETDATE(), GETDATE(), 1, 1, 1)

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
insert into SubprogramaConacyts values('Apoyos especiales', GETDATE(), GETDATE(), 1, 1, 1)

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

insert into DireccionRegionales values('Direcci�n General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1)
insert into DireccionRegionales values('Direcci�n Regional Noroeste',GETDATE(), GETDATE(), 1, 1, 1)
insert into DireccionRegionales values('Tijuana',GETDATE(), GETDATE(), 1, 1, 1)

insert into Sedes values('Matamoros',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into Sedes values('Nuevo Laredo',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into Sedes values('Piedras Negras',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into Sedes values('Monterrey',GETDATE(), GETDATE(), 1, 1, 1, 1);
insert into Sedes values('Ciudad Juarez',GETDATE(), GETDATE(), 2, 1, 1, 1);
insert into Sedes values('Mexicali',GETDATE(), GETDATE(), 1, 2, 1, 1);
insert into Sedes values('Nogales',GETDATE(), GETDATE(), 1, 2, 1, 1);
insert into Sedes values('Tijuana',GETDATE(), GETDATE(), 1, 3, 1, 1);

INSERT Investigadores VALUES('Dec 15 2008 12:00AM', 'Dec 14 2008 12:00AM', 'Produccion','Academico','CVU', 'Expediente SNI', 'Area 1', 'Area 2', 'Area 3', 'Aug 18 2009  9:23AM', 'Aug 18 2009  9:23AM', 1, 2, 1, 1, 1)
INSERT EstadoInvestigadores VALUES('Jan  5 2009 12:00AM','Aug 18 2009  9:23AM',GETDATE(), GETDATE(),1,1,1,1,null,1)
INSERT CargoInvestigadores VALUES('Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,1,1,1,1,1,null,1)
INSERT CategoriaInvestigadores VALUES('Feb  2 2009 12:00AM','Aug 18 2009  9:23AM',GETDATE(), GETDATE(),1,1,1,1,null,1)
INSERT GradoAcademicoInvestigadores VALUES('Jan  5 2009 12:00AM','Migracion en la frontera norte de Mexico', GETDATE(),GETDATE(),1,1,1,1,1,null,1)
INSERT SNIInvestigadores VALUES('Feb  2 2009 12:00AM','Feb  2 2010 12:00AM','Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,2,1,1,null,1)

--Investigador de prueba
INSERT Investigadores VALUES('Dec 15 2008 12:00AM', 'Dec 14 2008 12:00AM', 'Produccion','Academico','CVU', 'Expediente SNI', 'Area 1', 'Area 2', 'Area 3', 'Aug 18 2009  9:23AM', 'Aug 18 2009  9:23AM', 1, 4, 1, 1, 1)
INSERT EstadoInvestigadores VALUES('Jan  5 2009 12:00AM','Aug 18 2009  9:23AM',GETDATE(), GETDATE(),1,1,1,1,null,2)
INSERT CargoInvestigadores VALUES('Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,1,1,1,1,1,null,2)
INSERT CategoriaInvestigadores VALUES('Feb  2 2009 12:00AM','Aug 18 2009  9:23AM',GETDATE(), GETDATE(),1,1,1,1,null,2)
INSERT GradoAcademicoInvestigadores VALUES('Jan  5 2009 12:00AM','Migracion en la frontera norte de Mexico', GETDATE(),GETDATE(),1,1,1,1,1,null,2)
INSERT SNIInvestigadores VALUES('Feb  2 2009 12:00AM','Feb  2 2010 12:00AM','Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,2,1,1,null,2)

INSERT Investigadores VALUES('Dec 15 2008 12:00AM', 'Dec 14 2008 12:00AM', 'Produccion','Academico','CVU', 'Expediente SNI', 'Area 1', 'Area 2', 'Area 3', 'Aug 18 2009  9:23AM', 'Aug 18 2009  9:23AM', 1, 3, 1, 1, 1)
INSERT EstadoInvestigadores VALUES('Jan  5 2009 12:00AM','Aug 18 2009  9:23AM',GETDATE(), GETDATE(),1,1,1,1,null,3)
INSERT CargoInvestigadores VALUES('Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,1,1,1,1,1,null,3)
INSERT CategoriaInvestigadores VALUES('Feb  2 2009 12:00AM','Aug 18 2009  9:23AM',GETDATE(), GETDATE(),1,1,1,1,null,3)
INSERT GradoAcademicoInvestigadores VALUES('Jan  5 2009 12:00AM','Migracion en la frontera norte de Mexico', GETDATE(),GETDATE(),1,1,1,1,1,null,3)
INSERT SNIInvestigadores VALUES('Feb  2 2009 12:00AM','Feb  2 2010 12:00AM','Aug 18 2009  9:23AM','Aug 18 2009  9:23AM',1,2,1,1,null,3)