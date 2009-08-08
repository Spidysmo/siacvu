INSERT Personas VALUES('Administrador', null, null, 'admin@mail.com', GETDATE(), GETDATE(), 1, 1, 1)
INSERT Personas VALUES('Peter', 'Parker', null, 'admin@mail.com', GETDATE(), GETDATE(), 1, 1, 1)

INSERT Usuarios VALUES('administrador', 'admin', GETDATE(), GETDATE(), 1, 1, 1, 1)
INSERT Usuarios VALUES('pparker', 'parker', GETDATE(), GETDATE(), 1, 1, 1, 2)

INSERT Roles VALUES('Administradores', GETDATE(), GETDATE(), 1, 1, 1)
INSERT Roles VALUES('Investigadores', GETDATE(), GETDATE(), 1, 1, 1)

INSERT UsuarioRol VALUES(1, 1)
INSERT UsuarioRol VALUES(2, 2)

insert into Proyectos values('Proyecto 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into Proyectos values('Proyecto 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into Proyectos values('Proyecto 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into Proyectos values('Proyecto 4',GETDATE(), GETDATE(), 1, 1, 1);
insert into Proyectos values('Proyecto 5',GETDATE(), GETDATE(), 1, 1, 1);

insert into EstadoPaises values('EstadoPaises 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstadoPaises values('EstadoPaises 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstadoPaises values('EstadoPaises 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstadoPaises values('EstadoPaises 4',GETDATE(), GETDATE(), 1, 1, 1);
insert into EstadoPaises values('EstadoPaises 5',GETDATE(), GETDATE(), 1, 1, 1);

insert into MedioImpresos values('Periodico',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Tabloide',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Revista',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioImpresos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into MedioElectronicos values('Radio',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Television',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Internet',GETDATE(), GETDATE(), 1, 1, 1);
insert into MedioElectronicos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into Generos values('Entrevista',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Columna',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Articulo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Comentario',GETDATE(), GETDATE(), 1, 1, 1);
insert into Generos values('Mesa de Analisis',GETDATE(), GETDATE(), 1, 1, 1);

insert into Ambitos values('Nacional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Internacional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Binacional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Local',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Regional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Ambitos values('Estatal',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoOrganos values('Comision',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Comite',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Consejo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Junta',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Subcomite',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Jurado',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Consorsio',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Red',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Grupo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoOrganos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into OtraParticipaciones values('Presentacion de libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into OtraParticipaciones values('Presentacion de resultados de investigacion',GETDATE(), GETDATE(), 1, 1, 1);
insert into OtraParticipaciones values('Platicas',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoPresentaciones values('Moderador',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPresentaciones values('Comentarista',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPresentaciones values('Autor',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoPresentaciones values('Coordinador',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoDictamenes values('Libros',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Articulos',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Proyectos de investigaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Capitulos',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDictamenes values('Reportes t�cnicos',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoDistinciones values('Reconocimientos',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('Premios',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('Becas para estancias',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoDistinciones values('C�tedras acad�micas / Patrimoniales',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoEventos values('Congreso',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Foro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Seminario',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Taller',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Presentaci�n de Libro',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoEventos values('Otro',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoFinanciamientos values('Fiscal',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Complementario',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Financiamiento externo',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoFinanciamientos values('Mixto',GETDATE(), GETDATE(), 1, 1, 1);

insert into Niveles values('Nivel 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into Niveles values('Nivel 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into Niveles values('Nivel 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into Niveles values('Nivel 4',GETDATE(), GETDATE(), 1, 1, 1);
insert into Niveles values('Nivel 5',GETDATE(), GETDATE(), 1, 1, 1);

insert into Sectores values('Sector 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Sector 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Sector 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Sector 4',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sectores values('Sector 5',GETDATE(), GETDATE(), 1, 1, 1);

insert into ProgramaEstudios values('Programa Estudios 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProgramaEstudios values('Programa Estudios 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into ProgramaEstudios values('Programa Estudios 3',GETDATE(), GETDATE(), 1, 1, 1);

insert into Organizaciones values('Organizacion 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into Organizaciones values('Organizacion 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into Organizaciones values('Organizacion 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into Organizaciones values('Organizacion 4',GETDATE(), GETDATE(), 1, 1, 1);
insert into Organizaciones values('Organizacion 5',GETDATE(), GETDATE(), 1, 1, 1);

insert into Departamentos values('Direcci�n Regional de Nuevo Laredo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Direcci�n Regional de Matamoros',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Estudios de Poblaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Estudios Culturales',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Maestr�a en Econom�a Regional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Direcci�n General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Departamentos values('Estancia Infantil',GETDATE(), GETDATE(), 1, 1, 1);

insert into Estados values('Activo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Baja',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Sab�tico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Licencia c/ sueldo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Licencia s/ sueldo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Estados values('Superaci�n acad�mica',GETDATE(), GETDATE(), 1, 1, 1);

insert into GradoAcademicos values('Licenciatura',GETDATE(), GETDATE(), 1, 1, 1);
insert into GradoAcademicos values('Maestr�a',GETDATE(), GETDATE(), 1, 1, 1);
insert into GradoAcademicos values('Doctor',GETDATE(), GETDATE(), 1, 1, 1);

insert into Categorias values('Titular A',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Titular B',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Titular C',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Asociado A',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Asociado B',GETDATE(), GETDATE(), 1, 1, 1);
insert into Categorias values('Asociado C',GETDATE(), GETDATE(), 1, 1, 1);

insert into Cargos values('Investigador',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director de Departamento',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director Regional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Coordinador de Programa',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Presidente',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Secretario General Acad�mico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Coordinador de Departamento de Apoyo',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Coordinador de Oficinas de Enlace y Vinculaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director de Posgrado',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director General de Vinculaci�n y Apoyo Acad�mico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director General Acad�mico',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Becario de Alto Nivel',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Investigador por Proyecto',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Secretario General de Planeaci�n y Desarrollo Institucional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Direccion General de Administracion y Finanzas',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Direccion General Regional Noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Direccion General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Direccion de Area',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Otros',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Coordinador de Posgrado',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Coordinador de EcoParque',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Asistente de Director',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Estudiante Becario',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Investigador visitante',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director General de Docencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director General de Vinculaci�n Institucional',GETDATE(), GETDATE(), 1, 1, 1);
insert into Cargos values('Director General de Asuntos Acad�micos',GETDATE(), GETDATE(), 1, 1, 1);

insert into SNIs values('Candidato',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 1',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 2',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Nivel 3',GETDATE(), GETDATE(), 1, 1, 1);
insert into SNIs values('Emerito',GETDATE(), GETDATE(), 1, 1, 1);

insert into Sedes values('Matamoros','Direcci�n General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Nuevo Laredo','Direcci�n General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Piedras Negras','Direcci�n General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Monterrey','Direcci�n General Regional Noreste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Ciudad Juarez','Direcci�n General Regional Noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Tijuana','Tijuana',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Mexicali','Direcci�n General Regional Noroeste',GETDATE(), GETDATE(), 1, 1, 1);
insert into Sedes values('Nogales','Direcci�n General Regional Noroeste',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoArticulos values('Art�culo con arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoArticulos values('Art�culo sin arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoArticulos values('Art�culo traducido a otro idioma',GETDATE(), GETDATE(), 1, 1, 1);

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
insert into Indices values('Padr�n anterior',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('Indice no aprobado',GETDATE(), GETDATE(), 1, 1, 1);
insert into Indices values('Sin �ndice',GETDATE(), GETDATE(), 1, 1, 1);

insert into Instituciones values('Universidad Externado de Colombia',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Ayuntamiento de Matamoros',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('DIF Matamoros',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Casa de las Culturas del Mundo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Mexicano de la Juventud',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Universitario de Ciencias Sociales y Humanidades. Universidad de Guadalajara',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto de Investigaciones Jur�dicas de la UNAM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Organizaci�n J�venes Dem�cratas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Producen',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fuerza Aerea de Chile',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a  Plan del Desarrollo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UAM-Iztapalapa',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CEISAL',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UABC MEXICALI',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Nacional Aut�noma de M�xico',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de York',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma Metropolitana - Azcapotzalco',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CREDAL',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SOMDE, CONAPO, CRIM, UNFPA',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Organizaci�n Pol�tica Alemana J�venes Dem�cratas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Veracruzana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Michoacana de San Nicol�s de Hidalgo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Asociaci�n Mexicana de Estudios del Trabajo','Oscar Contreras Montellanos',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Banco Interamericano de Desarrollo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Tecnologico de Piedras Negras',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Tecnol�gica Centroamericana (Honduras)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('The University of Califronia and The COLEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de California',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of East Anglia G.B.',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SOMEE (Sociedad Mexicana de Estudios Electorales)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('REVES 15, Universidad de Guadalajara y COLEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('The University of the Texas at Austin',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Random House Mondadori',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Raya en el Agua',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Culturas Populares del ICBC',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Latin American Studies Association',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Sonora',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Investigaci�n en Alimentaci�n y Desarrollo (CIAD)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UIA-Noroeste, El COLEF, CETYS, DIF- municipal, CSPP, Alliant University Children s Hospital',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Suth western College',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Asociaci�n Latino-Iberoamericana de Gesti�n Tecnol�gica',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Colegio de Michoac�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Planned Parethood, Instituto nacional de la mujer y COLEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Planned parenthood, de San Diego  Instituto estatal de la mujer de BC y COLEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Plan Estrat�gico de Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Estudios Culturales. Museo UABC',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University Galery',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('IMAFED','Secretar�a de Gobernaci�n',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Georgetown University, Washington, DC, Estados Unidos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad La Sapienza, Roma',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Maestr�a en Estudios Latinoamericanos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de Estudios Superiores de Occidente',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico y de Estudios Superiores de Occidente',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('XVII Ayuntamiento de Tijuana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CEPAL-CELADE',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('La Comisi�n de Cooperaci�n Laboral',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Gobierno de Italia',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidada de Guadalajara',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Pedag�gica Nacional',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colegio de M�xico',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Nacional de Salud P�blica',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Red Internacional  de Colaboraci�n en las Ciencias del Comportamiento',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Iberoamericana Noroeste',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Southwestem College',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fundaci�n Mexicana de la Salud',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Zacatecas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Iberoamericana Noroeste en colaboraci�n con El Colef',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto de Investigaciones Dr. Jos� Mar�a Luis Mora',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Organizaci�n de Estados Iberamericanos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Baja California Sur',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Scalabrini House of Theology',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colegio de Tamaulipas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Panamericano de Humanidades',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad del Noreste de M�xico',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Comunitario de Salud Mental de Regla',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Whittir College',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n para Prevenir y Erradicar la Violencia Contra las Mujeres en Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Weatherhead Center Harvard University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Redlands',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de chihuahua',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Sociedad Cubana de Psiquiatr�a',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Foro Migraciones',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universite de Nice-Sophia Antipolis',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto de Administraci�n P�blica del Estado de Quintana Roo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Estudios Universitarios Xochicalco',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n Ciudadana de Derechos Humanos Noroeste A.C.',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a de Salud',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Yucat�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Red Internacional de Investigadores en Ciencias Sociales y Humanas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('ENLACE',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Estudios Superiores del Noroeste',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de la Habana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Interamericano de Estudios de Seguridad Social',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de La Laguna, Tenerife, Espa�a',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Investigacines Biol�gicas del Noroeste',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Trakya University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('San Diego Natural History Museum',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Ense�anza T�cnica y Superior',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Polit�cnico Nacional',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universit� de Poitiers',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colegio de San Luis',null,null,GETDATE(), GETDATE(), 1, 1, 1);

insert into Instituciones values('Universit� d Orl�ans',null,null,GETDATE(), GETDATE(), 1, 1, 1);

insert into Instituciones values('Universidad Aut�noma del Estado de Hidalgo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University San Diego',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Consulado de los Estados Unidos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of Pittsburgh',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Investigaci�n y Estudios Avanzados-IPN',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Complutense de Madrid',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Mil�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Sin Fronteras',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Rey Juan Carlos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Woodrow Wilson Center',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Murcia',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Madrid',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('COLEF-UABC',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('�coles des Hautes �tudes en Sciences Sociales (EHESS). Universit� de Paris, Sorbonne',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fondo de las Naciones Unidas para la Infancia (UNICEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colef, UABC, Universidad de California San Diego, Universidad Estatal de San Diego',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Woodbury University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Latina de Panam�',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n Interamericana de Mujeres',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of Essex',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Seminario Mayor de Nuevo Laredo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Mexicano de Doctrina Social',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Fronterizo de Promoci�n de Derechos Humanos A.C.',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fundaci�n para el Debido Proceso Legal',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Nacional para Tribunales Estatales',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a de Relaciones Exteriores',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n Internacional de L�mites y Aguas entre M�xico y Estados Unidos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Coalici�n Pro Defensa del Migrante',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Michoacana de San Nicol�s Hidalgo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Washington',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Queretaro',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Rural Services Research Institute',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Crist�bal Colon',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n Econ�mica para Am�rica Latina-M�xico',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Institut National de Etude Demogaphiques',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a de la Comisi�n de Poblaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Sin Fronteras, A.C',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Asuntos Migratorios de la LIX Legislatura de la C�mara de Diputados',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of  California, San Diego',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad del Caribe',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Museo de Historia Mexicana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Consejo Nacional para Prevenir la Discriminaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('La Comisi�n Coordinadora y las Instituciones Convocantes',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Sonora, UAS,  UABC, Centro de Investigaci�n en Alimentaci�n y Desarrollo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Deutscher Akademischer Austauschdienst Servicio Alem�n  de Intercambio Acad�mico',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of Skovde',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Nacional de Antropolog�a e Historia',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universitat de Valencia',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Facultad de Psicolog�a Universidad de la Habana','Dr. Dionisio Zaldivar P�rez',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto de Investigaci�n e Inversi�n estrategica del Gobierno de Guanajuato',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Francisco Gavidia',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Referencia Latinoamericano para la Educaci�n Especial',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad UNIVER Noroeste',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Tijuana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universite de Toulouse',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Xochicalco',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Iowa States University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma del Estado de Morelos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Gobierno del Estado de Coahuila',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Medical School',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Red de Salud de las Mujeres Latinoamericanas y del Caribe',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Observatorio Ciudadano del Feminicidio',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Valencia',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Michoacana del Oriente',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Tecnol�gico de Monterrey',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Investigaciones y Estudios Superiores en Antropolog�a Social',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('East Carolina University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Ayuntamiento de Nuevo Laredo','Horacio Garza Garza - Presidente Municipal',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Ayuntamiento de Tijuana','Jos� Guadalupe Osuna Mill�n - Presidente Municipal',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Barton Aschman Associates','Roberto C. Scales',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CECUT','Alfredo Alvarez - Director General',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CESPT','Ismael Grijalba Palomino - Director General',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CICESE','Mario Mart�nez Garc�a - Director General',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CIESAS','Dr. Ra�l Loyola D�az  - Director General, Lic. Araceli Mercado','relinst@juarez.ciesas.edu.mx',GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CNIME','Humberto Inzunza Fonseca - Presidente','hinzunza@telnor.net',GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('COLMEX','Andr�s Lira Gonz�lez - Presidente',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CONACYT','Jaime Martuscelli Quintana - Director Adjunto de Investigaci�n Cient�fica y Secretario Ejecutivo Sup',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SIREYES','H�ctor Menchaca Sol�s',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CONAGUA','Ing. Guillermo Villalobos - Director General',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CONAPO','Rosa Mar�a Ruvalcaba - Directora General de Estudios de Poblaci�n',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('COPARMEX','Pedro Mat�n Briones - Presidente',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CUT','Jes�s J. Ruiz Barraza - Presidente',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('FLACSO-Guatemala','Dr. Ren� Eduardo Poitevin - Director',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Ford Foundation','No tiene',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('FOSIMAC','Mart�n L. Celaya Barragan - Secretario T�cnico',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('FOSIREYES','H�ctor Menchaca Sol�s',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('FOSIVILLA','Eduardo Hurtado Garc�a - Secretario T�cnico',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fundaci�n Friedrich Ebert','Lic. Ekart Wild - Representante',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Gobierno del Estado SCT','H�ctor Ter�n Ter�n - Gobernador Constitucional de B. C.',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Gobierno del Estado de Chihuahua','Jes�s M. Sandoval Armenta - Director General de Fomento Econ�mico',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Federal Electoral','Jos� Woldenberg Karakosky - Consejero Presidente',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('INEGI','Carlos M. Jarque - Presidente',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de la Paz','M.C. Marcelino Bauza Rosete - Director',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('ITPN','V�ctor Manuel Ibarra Balderas - Director',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('ISSSTE','Lic. Olimpia Talla Jim�nez',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Medicina Social Comunitaria','Blanca Lomel� - Directora',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('New Mexico State University','William Conroy - Presidente',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SEMARNAP','No tiene',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Nacional de Ecolog�a','Miguel Anguel Cancino Aguilar',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SDSU','Nancy A. Marlin - Provost and Vicepresidente of Academic Affaris',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SEBS','M.C. Lorenzo G�mez Mor�n - Secretario',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SEDESOL','Lic. Mario Palma Rojo - Subsecretario de Desarrollo Regional',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SRE','Embajador Jorge Alberto Lozoya - Director Ejecutivo',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('STPS','Lic. Humberto Lugo Gil - Oficial Mayor',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SOMEDE','Carlos Welti',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('TAMIU','J. Charles Jennet - President',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UABC','H�ctor Everaldo Beltr�n Corona - Rector',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Coahuila','No tiene',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UABCS','Jorge Alberto Vale S�nchez - Rector',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Colima','Carlos Salazar Silva - Rector',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Autonoma Metropolitana Iztapalapa','Ter�n Casa Nueva - Rector',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UIA - Noroeste','Humberto Barquera G�mez - Apoderado',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('WWU','Johm O. Stubbs - President and Vice Chancellor',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SFU','Johm O. Stubbs - Presidente and Vice Chancellor',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Nacional de Migraci�n','No tiene',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretaria de Comercio','Jose Perez','jperez@sc.com',GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Guadalajara',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Ciudad Ju�rez',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('S.E.P.',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CREA',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Guadalajara',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('XIII Ayuntamiento de Mexicali',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fondo de Cultura Econ�mica',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Miguel �ngel Porr�a',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UNAM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colmex',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a del Trabajo y Previsi�n Social',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Consejo Nacional de Poblaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Asociac�n Latinoamericana de Sociolog�a',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('ORSTOM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Consejo Estatal de Poblaci�n de Oaxaca',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('ITESO',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Chicana/Latina Research Center-UCD',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Plaza y Valdez',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Iberoamericana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Programa Cultural de las Fronteras',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Conaculta',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('IRD',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Wisconsin','Alberto Palloni',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Iberomericana Santa F�',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Consorcio transfronterizo de investigaci�n en Acci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de investigaci�n y Docencia Econ�mica',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of Texas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fundaci�n Rockefeler',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fondo Nacional para la Cultura y las Artes',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Procuradur�a Federal de Protecci�n al Ambiente',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Consejo de Desarrollo Econ�mico de Tijuana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Organizaci�n Panamericana de la Salud Ely Lilly',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Programa Interdisciplinario de Estudios de la Mujer (PIEM)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fundaci�n Mac Arthur',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a de Gobernaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UC Mexus',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SAHOPE',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of Southern California',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n de Cooperaci�n Ambiental M�xico-Estados Unidos',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Sistema de Investigaci�n Francisco Villa',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n de Cooperaci�n Econ�mica Fronteriza (COCEF)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Organizaci�n Franco y Asociados',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Municipio de Juarez, Chihuahua',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Junta Municipal de Agua y Saneamiento',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SIMAC',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of California, in Santa Cruz, Ca.',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Parsons Transportation Group','Thomas E. Barron',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Colegio de Postgraduados',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('COESPO-GUANAJUATO','DR. LUIS FERNANDO MACIAS GARCIA',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('HEWLETT FOUNDATION',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('USC',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('AIDS RESEARCH PROGRAM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('USAID',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colef',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n de Cooperaci�n Ecologica',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('The Border Studies Program',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a de Energ�a de la Federaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Institut De Recherche Pour Le Development',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Compton Foundation',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('San Diego State University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('International Community Foundation',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('COESPO ( SONORA )',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Baker & Associates, energy Consultants',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Nacional de Nutrici�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CDT de Tecate',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fundaci�n El Colef',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Municipio de San Pedro Garza Garcia Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colegio Mexiquense','Iracheta Cenecorta Alfonso Xavier',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Mexicano de Seguro Social','David Ontiveros',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Environmental Resources Management',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Camp Dresser & Mckee Inc.',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fideicomiso','Ramiro Moreno Navarro',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Subsecretaria de asuntos religiosos en la Sec. de Gobernaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('SEMPRA ENERGY MEXICO',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Dir. Gral. Finanzas del Gobierno de Chihuahua',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Estatal de Michigan','Scott Whiteford',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Mexicano del Seguro Social','David Ontiveros',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Cuentas Bancarias','Ramiro Moreno Navarro',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('FLACSO - MEXICO',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico y de Estudios Superiores de Monterrey',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Tecnol�gica de Matamoros',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Universitario del Noreste',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Municipal de Planeaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Comisi�n para Asuntos de la Frontera Norte',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Archivo General del Estado de Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Texas El Paso',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UAM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a de Desarrollo Urbano y Obras P�blicas del Gobierno del Estado de Nuevo Le�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Consejo Estatal de Poblaci�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CONARTE',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Otro',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('International Community Foundation San Diego, Ca.','Richard Kiy',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto de Cultura de Baja California',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Southwestern College',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Pacific Sociological association',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('ITAM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Autonoma de Sinaloa',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('St Josephs Inivercity',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Loyola Marymount University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fairfiled University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('LaSalle University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('John Carrol University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Monterrey',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colegio de Michoac�n',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Tamaulipas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Tecnol�gico de Nuevo Laredo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Interamericana del Norte',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Museo Casamata',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Investigaci�n en Materiales Avanzados (CIMAV)','David R�os Jara',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('St. Josephs University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Layola College',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University  of Notre Dame',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Institut Natinal Du Travail de Emploi et de la formation professionnelle',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma Metropolitana-Xochimilco',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Gabriel Zzekely S�nchez',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Quitar Juarez',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Banco de M�xico',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CIAD',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Autonoma del Estado de M�xico',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('INESER',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('El Colegio de Sonora',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Guanajuato',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('nada tijuana',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro Regional de Investigaci�n Multidisciplinaria CRIM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Puebla (UAP)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('INSP',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('INSAD',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Estudios M�xico- Estados Unidos','Universidad de California en San Diego',null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto de Altos Estudios Internacionales',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Escuela Nacional de Antropolog�a e Historia. Unidad Chihuahua',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Casa del Migrante en Tijuana, Centro Scalabrini',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Colegio de Michoacan',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Planned parethood, Instituto estatal de la mujer  de BC y COLEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Baja California',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CIDE',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Tijuana Trabaja',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de San Francisco',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Planned parethood de San Diego, Instituto estatal de la mujer de BC y COLEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Hosei University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CREDAL, COLEF e ITESM',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Grupo Editorial EON',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Auton�ma Agraria Antonio Narro (UAAAN)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('University of California, San Diego (UCSD)',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('The University of California',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('The University of California and El Colegio de la Frontera Norte',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Estatal de San Diego',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Red nacional  de colaboraci�n en las ciencias del comportamiento',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('CETYS-Universidad',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma de Sinaloa',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Barcelona',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Plaza & Jan�s',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('IMAC',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Escuela Normal Fronteriza',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('INSITE',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Department of chicana chicano studies',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Harvard University',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UPN',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto Nacional de Desarrollo Social',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('UABC Ensenada',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Secretar�a de Desarrollo Social',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad de Guadalajara y El COLEF',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Fondo Poblacional de Naciones Unidas',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Universidad Aut�noma Metropolitana-Iztapalapa',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Centro de Estudios Estrat�gicos para el Desarrollo',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('COLEF - CICESE',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Instituto de la Mujer para el Estado de Baja California',null,null,GETDATE(), GETDATE(), 1, 1, 1);
insert into Instituciones values('Arizona State University',null,null,GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoParticipaciones values('Ponente',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Comentarista',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Moderador',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Coordinador de Mesa',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Organizador',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoParticipaciones values('Coorganizador',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoActividades values('Investigaci�n',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoActividades values('Docencia',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoActividades values('Vinculaci�n',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoCapitulos values('Capitulo con arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoCapitulos values('Capitulo sin arbitraje',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoCapitulos values('Capitulo traducido a otro idioma',GETDATE(), GETDATE(), 1, 1, 1);
insert into TipoCapitulos values('Ponencia publicada',GETDATE(), GETDATE(), 1, 1, 1);
  
insert into FormaParticipaciones values('Editor',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormaParticipaciones values('Compilador',GETDATE(), GETDATE(), 1, 1, 1);
insert into FormaParticipaciones values('Coordinador',GETDATE(), GETDATE(), 1, 1, 1);

insert into TipoParticipantes values('Persona Fisica',GETDATE(), GETDATE(), 1, 1, 1);
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


insert into Idiomas values('Afrikaans', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('Amharic', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('Arabic', GETDATE(), GETDATE(), 1, 1, 1)
insert into Idiomas values('American Sign Language', GETDATE(), GETDATE(), 1, 1, 1)  
insert into Idiomas values('Bahasa (Indonesian)', GETDATE(), GETDATE(), 1, 1, 1)     
insert into Idiomas values('Bengali', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Burmese', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Chinese (Cantonese)', GETDATE(), GETDATE(), 1, 1, 1)     
insert into Idiomas values('Chinese (Other)', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Chinese (Mandarin)', GETDATE(), GETDATE(), 1, 1, 1)      
insert into Idiomas values('Chinese (Shanghai)', GETDATE(), GETDATE(), 1, 1, 1)      
insert into Idiomas values('Czech', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Danish', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Dutch', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('English', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Farsi (Persian)', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Flemish', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('French', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Finish', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('German', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Greek', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Hebrew', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Hindi', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Hungarian', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Indian (Kannada)', GETDATE(), GETDATE(), 1, 1, 1)        
insert into Idiomas values('Indian (Hindi)', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Indian (Konkani)', GETDATE(), GETDATE(), 1, 1, 1)        
insert into Idiomas values('Italian', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Japanese', GETDATE(), GETDATE(), 1, 1, 1)                
insert into Idiomas values('Kiswahili', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Korean', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Latvian', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Lithuanian', GETDATE(), GETDATE(), 1, 1, 1)              
insert into Idiomas values('Laotian', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Latin', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Malay', GETDATE(), GETDATE(), 1, 1, 1)                   
insert into Idiomas values('Norwegian', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Polish', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Portuguese', GETDATE(), GETDATE(), 1, 1, 1)              
insert into Idiomas values('Rumanian', GETDATE(), GETDATE(), 1, 1, 1)                
insert into Idiomas values('Russian', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Swahili', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Spanish', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Serbo-Croatian', GETDATE(), GETDATE(), 1, 1, 1)          
insert into Idiomas values('Swedish', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Tagalog (Philippines)', GETDATE(), GETDATE(), 1, 1, 1)   
insert into Idiomas values('Telugu', GETDATE(), GETDATE(), 1, 1, 1)                  
insert into Idiomas values('Thai', GETDATE(), GETDATE(), 1, 1, 1)                    
insert into Idiomas values('Tamil (India)', GETDATE(), GETDATE(), 1, 1, 1)           
insert into Idiomas values('Tamil (Ceylon)', GETDATE(), GETDATE(), 1, 1, 1)          
insert into Idiomas values('Turkish', GETDATE(), GETDATE(), 1, 1, 1)                 
insert into Idiomas values('Twi (Ghana)', GETDATE(), GETDATE(), 1, 1, 1)             
insert into Idiomas values('Ukrainian', GETDATE(), GETDATE(), 1, 1, 1)               
insert into Idiomas values('Urdu (Pakistan', GETDATE(), GETDATE(), 1, 1, 1)        
insert into Idiomas values('Vietnamese', GETDATE(), GETDATE(), 1, 1, 1)         
insert into Idiomas values('Welsh', GETDATE(), GETDATE(), 1, 1, 1)                   


insert into PeriodoReferencias values('Enero - Junio 2001',	10,	'2001-01-01 00:00:00.000', '2001-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2001',	15,	'2001-07-01 00:00:00.000', '2001-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2002',	25,	'2002-01-01 00:00:00.000', '2002-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2002',	30,	'2002-07-01 00:00:00.000', '2002-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2003',	35,	'2003-01-01 00:00:00.000', '2003-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2003',	40,	'2003-07-01 00:00:00.000', '2003-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2004',	45,	'2004-01-01 00:00:00.000', '2004-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2004',	50,	'2004-07-01 00:00:00.000', '2004-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2005',	55,	'2005-01-01 00:00:00.000', '2005-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2005',	60,	'2005-07-01 00:00:00.000', '2005-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2006',	65,	'2006-01-01 00:00:00.000', '2006-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2006',	70,	'2006-07-01 00:00:00.000', '2006-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2007',	75,	'2007-01-01 00:00:00.000', '2007-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2007',	80,	'2007-07-01 00:00:00.000', '2007-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2008',	85,	'2008-01-01 00:00:00.000', '2008-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Julio - Diciembre 2008',	90,	'2008-07-01 00:00:00.000', '2008-12-31 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)
insert into PeriodoReferencias values('Enero - Junio 2009',	95,	'2009-01-01 00:00:00.000', '2009-06-30 00:00:00.000', GETDATE(), GETDATE(), 1, 1, 1)

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

insert into Areas values('Sistemas', GETDATE(), GETDATE(), 1 , 1, 1)
insert into Areas values('Recursos Humanos', GETDATE(), GETDATE(), 1 , 1, 1)
insert into Areas values('Produccion', GETDATE(), GETDATE(), 1 , 1, 1)
insert into Areas values('Area 51', GETDATE(), GETDATE(), 1 , 1, 1)

insert into Disciplinas values('Disciplina 1', GETDATE(), GETDATE(), 1, 1, 1)
insert into Disciplinas values('Disciplina 2', GETDATE(), GETDATE(), 1, 1, 1)
insert into Disciplinas values('Disciplina 3', GETDATE(), GETDATE(), 1, 1, 1)

insert into Subdisciplinas values('Subdisciplina 1', GETDATE(), GETDATE(), 1, 1, 1)
insert into Subdisciplinas values('Subdisciplina 2', GETDATE(), GETDATE(), 1, 1, 1)
insert into Subdisciplinas values('Subdisciplina 3', GETDATE(), GETDATE(), 1, 1, 1)

insert into RevistaPublicaciones values('AMERICAN NATURALIST', 'Monthly', '0003-0147', 'UNIV CHICAGO PRESS, 5720 SOUTH WOODLAWN AVE, CHICAGO, IL, 60637-1603', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN NEPTUNE', 'Quarterly', '0003-0155', 'PEABODY MUSEUM, E INDIA MARINE HALL, SALEM, MA, 01970', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN PHILOSOPHICAL QUARTERLY', 'Quarterly', '0003-0481', 'BOWLING GREEN STATE UNIVERSITY, PHILOSOPHY DOCUMENT CENTER, BOWLING GREEN, OH,   43403', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN POETRY REVIEW', 'Bimonthly', '0360-3709', 'WORLD POETRY INC, TEMPLE UNIV CENTER CITY, 1616 WALNUT ST-ROOM 405,   PHILADELPHIA, PA, 19103', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN POLITICAL SCIENCE REVIEW', 'Quarterly', '0003-0554', 'AMER POLITICAL SCIENCE ASSOC, 1527 NEW HAMPSHIRE N W, WASHINGTON, DC, 20036', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN POLITICS QUARTERLY', 'Quarterly', '0044-7803', 'SAGE PUBLICATIONS INC, 2455 TELLER RD, THOUSAND OAKS, CA, 91320', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN PSYCHIATRIC ASSOCIATION 150TH ANNUAL MEETING SAN DIEGO   CALIFORNIA PROGRAM AND ABSTRACTS ON NEW RESEARCH IN SUMMARY FORM', 'Irregular', '+ACoAKgAqACo--+ACoAKgAqACo-', 'AMER PSYCHIATRIC PRESS, INC, 1400 K ST, N W, STE 1101, WASHINGTON, DC, 20005', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN PSYCHOLOGIST', 'Monthly', '0003-066X', 'AMER PSYCHOLOGICAL ASSOC, 750 FIRST ST NE, WASHINGTON, DC, 20002-4242', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN QUARTERLY', 'Quarterly', '0003-0678', 'JOHNS HOPKINS UNIV PRESS, JOURNALS PUBLISHING DIVISION,2715 NORTH CHARLES ST,   BALTIMORE, MD, 21218-4319', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN REVIEW OF PUBLIC ADMINISTRATION', 'Quarterly', '0275-0740', 'SAGE PUBLICATIONS INC, 2455 TELLER RD, THOUSAND OAKS, CA, 91320', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SCHOLAR', 'Quarterly', '0003-0937', 'PHI BETA KAPPA SOC, 1785 MASSACHUSETTS AVENUE,N W FOURTH FL,, WASHINGTON, DC,   20036', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SCIENTIST', 'Bimonthly', '0003-0996', 'SIGMA XI-SCI RES SOC, PO BOX 13975, RES TRIANGLE PK, NC, 27709', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SOCIETY FOR REPRODUCTIVE MEDICINE-ABSTRACT SEARCH', 'Annual', '+ACoAKgAqACo--+ACoAKgAqACo-', 'PARKE-DAVIS, DIVISION WARNER-LAMBERT CO, 201 TABOR RD, MORRIS PLAINS, NJ, 07950', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SOCIOLOGICAL REVIEW', 'Bimonthly', '0003-1224', 'AMER SOCIOLOGICAL ASSOC, 1307 NEW YORK AVE NW +ACM-700, WASHINGTON, DC, 20005-4712', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SPEECH', 'Quarterly', '0003-1283', 'DUKE UNIV PRESS, 905 W MAIN ST, STE 18-B, DURHAM, NC, 27701', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN STATISTICIAN', 'Quarterly', '0003-1305', 'AMER STATISTICAL ASSOC, 1429 DUKE ST, ALEXANDRIA, VA, 22314', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN STUDIES IN SCANDINAVIA', 'Semiannual', '0044-8060', 'ODENSE UNIV PRESS, CAMPUSVEJ 55, ODENSE M, DENMARK, 5230', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN STUDIES INTERNATIONAL', 'Triennial', '+ACoAKgAqACo--+ACoAKgAqACo-', 'GEORGE WASHINGTON UNIV, AMERICAN STUDIES PROGRAM, WASHINGTON, DC, 20052', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN SURGEON', 'Monthly', '0003-1348', 'SOUTHEASTERN SURGICAL CONGRESS, 141 WEST WIEUCA RD, STE B100, ATLANTA, GA,   30342', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN TRANSCENDENTAL QUARTERLY', 'Quarterly', '0149-9017', 'UNIV RHODE ISLAND, DEPT ENGLISH, KINGSTON, RI, 02881', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAN ZOOLOGIST', 'Bimonthly', '0003-1569', 'AMER SOC ZOOLOGISTS, 1041 NEW HAMPSHIRE ST, LAWRENCE, KS, 66044', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAS', 'Quarterly', '0003-1615', 'ACAD AMER FRANCISCAN HIST, BOX 34440, WEST BETHESDA, MD, 20817', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMERICAS NETWORK', 'Semimonthly', '1075-5292', 'ADVANSTAR COMMUNICATIONS, 131 W FIRST ST, DULUTH, MN, 55802', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMINO ACIDS', 'Bimonthly', '0939-4451', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMPHIBIA-REPTILIA', 'Quarterly', '0173-5373', 'BRILL ACADEMIC PUBLISHERS, PLANTIJNSTRAAT 2,P O BOX 9000, LEIDEN, NETHERLANDS,   2300 PA', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANAEROBE', 'Bimonthly', '1075-9964', 'ACADEMIC PRESS LTD, 24-28 OVAL RD, LONDON, ENGLAND, NW1 7DX', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANAESTHESIA', 'Monthly', '0003-2409', 'BLACKWELL SCIENCE LTD, P O BOX 88,OSNEY MEAD, OXFORD, ENGLAND, OX2 0NE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('AMYLOID-INTERNATIONAL JOURNAL OF EXPERIMENTAL AND CLINICAL INVESTIGATION', 'Quarterly', '1350-6129', 'PARTHENON PUBLISHING GROUP, CASTERTON HALL, CARNFORTH LANCASHIRE, ENGLAND, LA6   2LA', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANAESTHESIA AND INTENSIVE CARE', 'Quarterly', '0310-057X', 'AUSTRALIAN SOC ANAESTHETISTS, P O BOX 600, EDGECLIFF, AUSTRALIA, 2021', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANAESTHESIST', 'Monthly', '0003-2417', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALES DE LA ASOCIACION QUIMICA ARGENTINA', 'Triennial', '0365-0375', 'ASOC QUIMICA ARGENTINA, SANCHEZ DE BUSTAMANTE 1749, BUENOS AIRES, ARGENTINA,   1425', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALES DE LA LITERATURA ESPANOLA CONTEMPORANEA', 'Semiannual', '0272-1635', 'UNIV NEBRASKA-LINCOLN, DEPT MODERN LANGUAGES, +ACY- LITERATURES,OLDFATHER   HALLLINCOLN, NE, 68588', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALES ESPANOLES DE PEDIATRIA', 'Monthly', '0302-4342', 'ANALES ESPANOLES PEDIATRIA, ARBOLEDA, 1, MADRID, SPAIN, 28220', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALOG INTEGRATED CIRCUITS AND SIGNAL PROCESSING', 'Monthly', '0925-1030', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALUSIS', 'Monthly', '0365-4877', 'E D P SCIENCES, 7, AVE DU HOGGAR,PARC D ACTIVITES COURTABOEUF,BP 112LES ULIS   CEDEXA, FRANCE, F-91944', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYSIS', 'Quarterly', '0003-2638', 'BLACKWELL PUBL LTD, 108 COWLEY RD, OXFORD, ENGLAND, OX4 1JF', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYST', 'Monthly', '0003-2654', 'ROYAL SOC CHEMISTRY, THOMAS GRAHAM HOUSE,SCIENCE PARK,MILTON RD,CAMBRIDGE,   ENGLAND, CB4 0WF', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICA CHIMICA ACTA', 'Weekly', '0003-2670', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL AND QUANTITATIVE CYTOLOGY AND HISTOLOGY', 'Bimonthly', '0884-6812', 'SCI PRINTERS +ACY- PUBL INC, P.O. DRAWER 12425, 8342 OLIVE BLVD, ST LOUIS, MO,   63132', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL BIOCHEMISTRY', 'Semimonthly', '0003-2697', 'ACADEMIC PRESS INC, 525 B ST, STE 1900, SAN DIEGO, CA, 92101-4495', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL CELLULAR PATHOLOGY', 'Bimonthly', '0921-8912', 'IOS PRESS, NIEUWE HEMWEG 6B, AMSTERDAM, NETHERLANDS, 1013 BG', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL CHEMISTRY', 'Semimonthly', '0003-2700', 'AMER CHEMICAL SOC, 1155 16TH ST, NW, WASHINGTON, DC, 20036', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL COMMUNICATIONS', 'Monthly', '1359-7337', 'ROYAL SOC CHEMISTRY, THOMAS GRAHAM HOUSE,SCIENCE PARK,MILTON RD,CAMBRIDGE,   ENGLAND, CB4 0WF', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL LETTERS', 'Monthly', '0003-2719', 'MARCEL DEKKER INC, 270 MADISON AVE, NEW YORK, NY, 10016', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTICAL SCIENCES', 'Bimonthly', '0910-6340', 'JAPAN SOC ANALYTICAL CHEM, 26-2 NISHIGOTANDA 1 CHOME, SHINAGAWA-KU, TOKYO,   JAPAN, 141', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANALYTISCHE PSYCHOLOGIE', 'Quarterly', '0301-3006', 'KARGER, ALLSCHWILERSTRASSE 10, BASEL, SWITZERLAND, CH-4009', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANASTHESIOLOGIE +ACY- INTENSIVMEDIZIN', 'Monthly', '0170-5334', 'BLACKWELL WISSENSCHAFTS-VERLAG GMBH, KURFURSTENDAMM 57, BERLIN, GERMANY,   D-10707', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANASTHESIOLOGIE INTENSIVMEDIZIN NOTFALLMEDIZIN SCHMERZTHERAPIE', 'Bimonthly', '0939-2661', 'GEORG THIEME VERLAG, RUDIGERSTR 14, STUTTGART, GERMANY, D-70469', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANATOMIA HISTOLOGIA EMBRYOLOGIA-JOURNAL OF VETERINARY MEDICINE SERIES C', 'Bimonthly', '0340-2096', 'BLACKWELL WISSENSCHAFTS-VERLAG GMBH, KURFURSTENDAMM 57, BERLIN, GERMANY,   D-10707', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANATOMICAL RECORD', 'Semimonthly', '0003-276X', 'WILEY-LISS, DIV JOHN WILEY +ACY- SONS INC,605 THIRD AVE, NEW YORK, NY, 10158-0012', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANATOMY AND EMBRYOLOGY', 'Monthly', '0340-2061', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANDROLOGIA', 'Bimonthly', '0303-4569', 'BLACKWELL WISSENSCHAFTS-VERLAG GMBH, KURFURSTENDAMM 57, BERLIN, GERMANY,   D-10707', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANESTHESIA AND ANALGESIA', 'Monthly', '0003-2999', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANESTHESIOLOGY', 'Monthly', '0003-3022', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANESTHESIOLOGY CLINICS OF NORTH AMERICA', 'Quarterly', '0889-8537', 'W B SAUNDERS CO, INDEPENDENCE SQUARE WEST, CURTIS CENTER, STE 300,   PHILADELPHIA, PA, 19106-3399', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANGEWANDTE CHEMIE-INTERNATIONAL EDITION', 'Semimonthly', '1433-7851', 'WILEY-V C H VERLAG GMBH, MUHLENSTRASSE 33-34, BERLIN, GERMANY, D-13187', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANGIOLOGY', 'Monthly', '0003-3197', 'WESTMINSTER PUBL INC, 708 GLEN COVE AVE, GLEN HEAD, NY, 11545', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANGLE ORTHODONTIST', 'Bimonthly', '0003-3219', 'ANGLE ORTHODONTISTS RES EDUC FOUNDATION INC, 100 W LAWRENCE ST,SUITE 406,,   APPLETON, WI, 54911', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANGLIA-ZEITSCHRIFT FUR ENGLISCHE PHILOLOGIE', 'Semiannual', '0340-5222', 'MAX NIEMEYER VERLAG, POSTFACH 21 40, PFRONDORFER STR 6, TUBINGEN, GERMANY,   W-7400', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL BEHAVIOUR', 'Monthly', '0003-3472', 'ACADEMIC PRESS LTD, 24-28 OVAL RD, LONDON, ENGLAND, NW1 7DX', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL BIOTECHNOLOGY', 'Semiannual', '1049-5398', 'MARCEL DEKKER INC, 270 MADISON AVE, NEW YORK, NY, 10016', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL FEED SCIENCE AND TECHNOLOGY', 'Semimonthly', '0377-8401', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL GENETICS', 'Bimonthly', '0268-9146', 'BLACKWELL SCIENCE LTD, P O BOX 88,OSNEY MEAD, OXFORD, ENGLAND, OX2 0NE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL LEARNING +ACY- BEHAVIOR', 'Quarterly', '0090-4996', 'PSYCHONOMIC SOC INC, 1710 FORTVIEW RD, AUSTIN, TX, 78704', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL REPRODUCTION SCIENCE', 'Monthly', '0378-4320', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL SCIENCE', 'Bimonthly', '1357-7298', 'BRITISH SOC ANIMAL SCIENCE, PUBLICATIONS DEPT,PO BOX 3, PENICUIK, SCOTLAND,   EH26 ORZ', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANIMAL WELFARE', 'Quarterly', '0962-7286', 'UNIV FEDERATION ANIMAL WELFARE, OLD SCHOOL, BREWHOUSE HILL, WHEATHAMPSTEAD,   ENGLAND, AL4 8AN', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALEN DER PHYSIK', 'Bimonthly', '0003-3804', 'WILEY-V C H VERLAG GMBH, MUHLENSTRASSE 33-34, BERLIN, GERMANY, D-13187', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES ACADEMIAE SCIENTIARUM FENNICAE-MATHEMATICA', 'Semiannual', '1239-629X', 'SUOMALAINEN TIEDEAKATEMIA, MARIANKATU 5, HELSINKI, FINLAND, 00170', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES BOTANICI FENNICI', 'Quarterly', '0003-3847', 'FINNISH ZOOLOGICAL BOTANICAL PUBLISHING BOARD, P O BOX 17, UNIV HELSINKI,   FINLAND, FIN-00014', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES CHIRURGIAE ET GYNAECOLOGIAE', 'Quarterly', '0355-9521', 'FINNISH SURGICAL SOC, MAKELANKATU 2, HELSINKI, FINLAND, SF-00550', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES D ENDOCRINOLOGIE', 'Bimonthly', '0003-4266', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES D UROLOGIE', 'Bimonthly', '0003-4401', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE BIOLOGIE CLINIQUE', 'Bimonthly', '0003-3898', 'JOHN LIBBEY EUROTEXT LTD, 127 AVE DE LA REPUBLIQUE, MONTROUGE, FRANCE, 92120', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE BRETAGNE ET DES PAYS DE L OUEST', 'Quarterly', '0399-0826', 'UNIV HAUTE-BRETAGNE, ANN BRETAGNE PAYS OUEST, AVE GASTON-BERGER, RENNES,   FRANCE, 35000', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE CARDIOLOGIE ET D ANGEIOLOGIE', 'Monthly', '0003-3928', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE CHIMIE-SCIENCE DES MATERIAUX', 'Bimonthly', '0151-9107', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE CHIRURGIE', 'Monthly', '0003-3944', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE DERMATOLOGIE ET DE VENEREOLOGIE', 'Monthly', '0151-9638', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE GASTROENTEROLOGIE ET D HEPATOLOGIE', 'Bimonthly', '0066-2070', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE GENETIQUE', 'Quarterly', '0003-3995', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE L INSTITUT FOURIER', 'Bimonthly', '0373-0956', 'ANNALES DE L INSTITUT FOURIER, INST DE MATHEMATIQUES PURES, BOITE POSTALE 116,   ST MARTIN D HERES CEDEX, FRANCE, 38402', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE L INSTITUT HENRI POINCARE-ANALYSE NON LINEAIRE', 'Bimonthly', '0294-1449', 'GAUTHIER-VILLARS/EDITIONS ELSEVIER, 23 RUE LINOIS, PARIS, FRANCE, 75015', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE L INSTITUT HENRI POINCARE-PROBABILITES ET STATISTIQUES', 'Bimonthly', '0246-0203', 'GAUTHIER-VILLARS/EDITIONS ELSEVIER, 23 RUE LINOIS, PARIS, FRANCE, 75015', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE LA SOCIETE ENTOMOLOGIQUE DE FRANCE', 'Quarterly', '0037-9271', 'SOC ENTOMOLOGIQUE FRANCE, 45 RUE BUFFON, PARIS, FRANCE, 75005', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE LIMNOLOGIE-INTERNATIONAL JOURNAL OF LIMNOLOGY', 'Quarterly', '0003-4088', 'UNIV PAUL SABITIER-TOULOUSE III-CESAC, 118 ROUTE NARBONNE, TOULOUSE, FRANCE,   F-31062', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE MEDECINE INTERNE', 'Bimonthly', '0003-410X', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE MEDECINE VETERINAIRE', 'Bimonthly', '0003-4118', 'ANNALES MEDECINE VETERINAIRE, UNIVERSITE LIEGE,SART TILMAN BAT 43, LIEGE,   BELGIUM, B-4000', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE PATHOLOGIE', 'Bimonthly', '0242-6498', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE PEDIATRIE', 'Monthly', '0066-2097', 'EXPANSION SCI FRANCAISE, 31 BLVD LATOUR MAUBOURG, PARIS, FRANCE, 75007', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE PHYSIQUE', 'Bimonthly', '0003-4169', 'E D P SCIENCES, 7, AVE DU HOGGAR,PARC D ACTIVITES COURTABOEUF,BP 112LES ULIS   CEDEXA, FRANCE, F-91944', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DE ZOOTECHNIE', 'Bimonthly', '0003-424X', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DES SCIENCES NATURELLES-ZOOLOGIE ET BIOLOGIE ANIMALE', 'Quarterly', '0003-4339', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES DES TELECOMMUNICATIONS-ANNALS OF TELECOMMUNICATIONS', 'Bimonthly', '0003-4347', 'PRESSES POLYTECHNIQUES ET UNIVERSITAIRES ROMANDES, EPFL-ECUBLENS,CENTRE MIDI,   LAUSANNE, SWITZERLAND, CH-1015', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES FRANCAISES D ANESTHESIE ET DE REANIMATION', 'Bimonthly', '0750-7658', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES GEOPHYSICAE-ATMOSPHERES HYDROSPHERES AND SPACE SCIENCES', 'Monthly', '0992-7689', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES HENRI POINCARE', 'Bimonthly', '1424-0637', 'BIRKHAUSER VERLAG AG, VIADUKSTRASSE 40-44,PO BOX 133, BASEL, SWITZERLAND,   CH-4010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES HISTORIQUES DE LA REVOLUTION FRANCAISE', 'Quarterly', '0003-4436', 'UNIV PARIS SORBONNE, SOC ETUD ROBESPIERRISTES, 17 RUE DE LA SORBONNE, PARIS   05, FRANCE, 75231', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES MEDICO-PSYCHOLOGIQUES', 'Monthly', '0003-4487', 'MASSON EDITEUR, 120 BLVD SAINT-GERMAIN, PARIS 06, FRANCE, 75280', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES SCIENTIFIQUES DE L ECOLE NORMALE SUPERIEURE', 'Bimonthly', '0012-9593', 'GAUTHIER-VILLARS/EDITIONS ELSEVIER, 23 RUE LINOIS, PARIS, FRANCE, 75015', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES ZOOLOGICI FENNICI', 'Quarterly', '0003-455X', 'FINNISH ZOOLOGICAL BOTANICAL PUBLISHING BOARD, P O BOX 17, UNIV HELSINKI,   FINLAND, FIN-00014', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALES-HISTOIRE SCIENCES SOCIALES', 'Bimonthly', '0395-2649', 'LIBRAIRIE ARMAND COLIN, 34 BIS RUE DE L UNIVERSITE, PARIS, FRANCE, 75007', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALI DI CHIMICA', 'Bimonthly', '0003-4592', 'SOC CHIMICA ITALIANA, VIALE LIEGI 48, ROME, ITALY, I-00198', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALI DI GEOFISICA', 'Bimonthly', '0365-2556', 'EDITRICE COMPOSITORI BOLOGNA, VIA SAN QUIRICO 13/2, SIENA, ITALY, I-53100', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALI DI MICROBIOLOGIA ED ENZIMOLOGIA', 'Semiannual', '0003-4649', 'INST MICROBIOLOGIA, VIA CELORIA 2, MILAN, ITALY, 20133', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ALLERGY ASTHMA +ACY- IMMUNOLOGY', 'Monthly', '1081-1206', 'AMER COLL ALLERGY ASTHMA IMMUNOLOGY, 85 WEST ALGONQUIN RD, SUITE 550,   ARLINGTON HTS, IL, 60005', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ANATOMY-ANATOMISCHER ANZEIGER', 'Bimonthly', '0940-9602', 'URBAN +ACY- FISCHER VERLAG, BRANCH OFFICE JENA,P O BOX 100537, JENA, GERMANY,   D-07705', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF APPLIED BIOLOGY', 'Bimonthly', '0003-4746', 'ASSOC APPLIED BIOLOGISTS, NATL VEGETABLE RES STATION, WELLSBOURNE, WARWICK,   ENGLAND, CV35 9EF', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF APPLIED PROBABILITY', 'Quarterly', '1050-5164', 'INST MATHEMATICAL STATISTICS, IMS BUSINESS OFFICE-SUITE 7,3401 INVESTMENT   BLVD, HAYWARD, CA, 94545', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ARID ZONE', 'Quarterly', '0570-1791', 'ARID ZONE RESEARCH ASSOC INDIA, C.A.Z.R.I. CAMPUS, JODHPUR, INDIA, 342 003', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF BEHAVIORAL MEDICINE', 'Quarterly', '0883-6612', 'SOC BEHAVIORAL MEDICINE, 7611 ELMWOOD AVE, STE 201, MIDDLETON, WI, 53562-3161', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF BIOMEDICAL ENGINEERING', 'Bimonthly', '0090-6964', 'AMER INST PHYSICS, 2 HUNTINGTON QUADRANGLE,STE 1NO1, MELVILLE, NY, 11747-4501', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF BOTANY', 'Monthly', '0305-7364', 'ACADEMIC PRESS LTD, 24-28 OVAL RD, LONDON, ENGLAND, NW1 7DX', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF CARNEGIE MUSEUM', 'Quarterly', '0097-4463', 'CARNEGIE MUSEUM NATURAL HISTORY, 4400 FORBES AVE, PITTSBURGH, PA, 15213', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF CLINICAL AND LABORATORY SCIENCE', 'Bimonthly', '0091-7370', 'INST CLINICAL SCIENCE INC, 1833 DELANCEY PLACE, PHILADELPHIA, PA, 19103', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF CLINICAL BIOCHEMISTRY', 'Bimonthly', '0004-5632', 'ROYAL SOC MEDICINE PRESS LTD, 1 WIMPOLE STREET, LONDON, ENGLAND, W1M 8AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF DYSLEXIA', 'Annual', '0736-9387', 'INT DYSLEXIA ASSOC, CHESTER BUILDING, STE 382,8600 LA SALLE RD, BALTIMORE, MD,   21286-2044', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF EMERGENCY MEDICINE', 'Monthly', '0196-0644', 'MOSBY-YEAR BOOK INC, 11830 WESTLINE INDUSTRIAL DR, ST LOUIS, MO, 63146-3318', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF EPIDEMIOLOGY', 'Bimonthly', '1047-2797', 'ELSEVIER SCIENCE INC, 655 AVENUE OF THE AMERICAS, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF FOREST SCIENCE', 'Bimonthly', '1286-4560', 'EDITIONS SCIENTIFIQUES MEDICALES ELSEVIER, 23 RUE LINOIS, PARIS CEDEX 15,   FRANCE, 75724', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF GLACIOLOGY', 'Annual', '0260-3055', 'INT GLACIOLOGICAL SOC, LENSFIELD RD, CAMBRIDGE, ENGLAND, CB2 1ER', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF GLOBAL ANALYSIS AND GEOMETRY', 'Bimonthly', '0232-704X', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF HEMATOLOGY', 'Monthly', '0939-5555', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF HUMAN BIOLOGY', 'Bimonthly', '0301-4460', 'TAYLOR +ACY- FRANCIS LTD, 11 NEW FETTER LANE, LONDON, ENGLAND, EC4P 4EE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF HUMAN GENETICS', 'Bimonthly', '0003-4800', 'CAMBRIDGE UNIV PRESS, 40 WEST 20TH STREET, NEW YORK, NY, 10011-4211', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF INTERNAL MEDICINE', 'Semimonthly', '0003-4819', 'AMER COLL PHYSICIANS, INDEPENDENCE MALL WEST, 6TH AND RACE ST, PHILADELPHIA,   PA, 19106-1572', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MATHEMATICS', 'Bimonthly', '0003-486X', 'ANN MATHEMATICS, PO BOX 231, PRINCETON, NJ, 08540', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MATHEMATICS AND ARTIFICIAL INTELLIGENCE', 'Quarterly', '1012-2443', 'BALTZER SCI PUBL BV, PO BOX 221, BUSSUM, NETHERLANDS, 1400 AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MATHEMATICS STUDIES', 'Semiannual', '0066-2313', 'PRINCETON UNIV PRESS, 41 WILLIAM ST, PRINCETON, NJ, 08540', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF MEDICINE', 'Bimonthly', '0785-3890', 'ROYAL SOC MEDICINE PRESS LTD, 1 WIMPOLE STREET, LONDON, ENGLAND, W1M 8AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NEUROLOGY', 'Monthly', '0364-5134', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NUCLEAR ENERGY', 'Semimonthly', '0306-4549', 'PERGAMON-ELSEVIER SCIENCE LTD, THE BOULEVARD, LANGFORD LANE,KIDLINGTON,   OXFORD, ENGLAND, OX5 1GB', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NUCLEAR MEDICINE', 'Bimonthly', '0914-7187', 'JAPANESE SOCIETY NUCLEAR MEDICINE, C/O JAPAN RADIOISOTOPE ASSOC,28-45   HON-KOMAGOME 2-CHOME,BUNKYO-KU, TOKYO, JAPAN, 113-0021', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF NUTRITION AND METABOLISM', 'Bimonthly', '0250-6807', 'KARGER, ALLSCHWILERSTRASSE 10, BASEL, SWITZERLAND, CH-4009', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OCCUPATIONAL HYGIENE', 'Bimonthly', '0003-4878', 'PERGAMON-ELSEVIER SCIENCE LTD, THE BOULEVARD, LANGFORD LANE,KIDLINGTON,   OXFORD, ENGLAND, OX5 1GB', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF ONCOLOGY', 'Monthly', '0923-7534', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OPERATIONS RESEARCH', 'Monthly', '0254-5330', 'BALTZER SCI PUBL BV, PO BOX 221, BUSSUM, NETHERLANDS, 1400 AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OPHTHALMOLOGY', 'Quarterly', '1079-4794', 'AMER SOC CONTEMPORARY OPHTHALMOLOGY, 820 N ORLEANS, STE 208, CHICAGO, IL, 60610', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF OTOLOGY RHINOLOGY AND LARYNGOLOGY', 'Monthly', '0003-4894', 'ANNALS PUBL CO, 4507 LACLEDE AVE, ST LOUIS, MO, 63108', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PHARMACOTHERAPY', 'Monthly', '1060-0280', 'HARVEY WHITNEY BOOKS CO, PO BOX 42696, CINCINNATI, OH, 45242', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PHYSICS', 'Semimonthly', '0003-4916', 'ACADEMIC PRESS INC, 525 B ST, STE 1900, SAN DIEGO, CA, 92101-4495', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PLASTIC SURGERY', 'Monthly', '0148-7043', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PROBABILITY', 'Quarterly', '0091-1798', 'INST MATHEMATICAL STATISTICS, IMS BUSINESS OFFICE-SUITE 7,3401 INVESTMENT   BLVD, HAYWARD, CA, 94545', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF PURE AND APPLIED LOGIC', 'Semimonthly', '0168-0072', 'ELSEVIER SCIENCE BV, PO BOX 211, AMSTERDAM, NETHERLANDS, 1000 AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF REGIONAL SCIENCE', 'Quarterly', '0570-1864', 'SPRINGER VERLAG, 175 FIFTH AVE, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SAUDI MEDICINE', 'Bimonthly', '0256-4947', 'K FAISAL SPEC HOSP RES CENTRE, PUBLICATIONS OFFICE, PO BOX 3354, RIYADH, SAUDI   ARABIA, 11211', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SCIENCE', 'Quarterly', '0003-3790', 'TAYLOR +ACY- FRANCIS LTD, 11 NEW FETTER LANE, LONDON, ENGLAND, EC4P 4EE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SOFTWARE ENGINEERING', 'Semiannual', '1022-7091', 'BALTZER SCI PUBL BV, PO BOX 221, BUSSUM, NETHERLANDS, 1400 AE', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF STATISTICS', 'Quarterly', '0090-5364', 'INST MATHEMATICAL STATISTICS, IMS BUSINESS OFFICE-SUITE 7,3401 INVESTMENT   BLVD, HAYWARD, CA, 94545', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SURGERY', 'Monthly', '0003-4932', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF SURGICAL ONCOLOGY', 'Bimonthly', '1068-9265', 'LIPPINCOTT WILLIAMS +ACY- WILKINS, 530 WALNUT ST, PHILADELPHIA, PA, 19106-3621', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE AMERICAN ACADEMY OF POLITICAL AND SOCIAL SCIENCE', 'Bimonthly', '0002-7162', 'SAGE PUBLICATIONS INC, 2455 TELLER RD, THOUSAND OAKS, CA, 91320', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE ASSOCIATION OF AMERICAN GEOGRAPHERS', 'Quarterly', '0004-5608', 'BLACKWELL PUBLISHERS, 350 MAIN STREET, STE 6, MALDEN, MA, 02148', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE ENTOMOLOGICAL SOCIETY OF AMERICA', 'Bimonthly', '0013-8746', 'ENTOMOL SOC AMER, 9301 ANNAPOLIS RD, LANHAM, MD, 20706', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE INSTITUTE OF STATISTICAL MATHEMATICS', 'Quarterly', '0020-3157', 'KLUWER ACADEMIC PUBL, SPUIBOULEVARD 50,PO BOX 17, DORDRECHT, NETHERLANDS, 3300   AA', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE MISSOURI BOTANICAL GARDEN', 'Quarterly', '0026-6493', 'MISSOURI BOTANICAL GARDEN, 2345 TOWER GROVE AVENUE, ST LOUIS, MO, 63110', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE NEW YORK ACADEMY OF SCIENCES', 'Monthly', '0077-8923', 'NEW YORK ACAD SCIENCES, 2 EAST 63RD ST, NEW YORK, NY, 10021', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE RHEUMATIC DISEASES', 'Monthly', '0003-4967', 'BRITISH MED JOURNAL PUBL GROUP, BRITISH MED ASSOC HOUSE,TAVISTOCK SQUARE,   LONDON, ENGLAND, WC1H 9JR', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THE ROYAL COLLEGE OF SURGEONS OF ENGLAND', 'Bimonthly', '0035-8843', 'ROYAL COLL SURGEONS ENGLAND, 35-43 LINCOLN''S INN FIELDS, LONDON, ENGLAND, WC2A   3PN', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF THORACIC SURGERY', 'Monthly', '0003-4975', 'ELSEVIER SCIENCE INC, 655 AVENUE OF THE AMERICAS, NEW YORK, NY, 10010', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
insert into RevistaPublicaciones values('ANNALS OF TOURISM RESEARCH', 'Quarterly', '0160-7383', 'PERGAMON-ELSEVIER SCIENCE LTD, THE BOULEVARD, LANGFORD LANE,KIDLINGTON,   OXFORD, ENGLAND, OX5 1GB', 'ISI', 'A', GETDATE(), GETDATE(), 1, 1, 1)
