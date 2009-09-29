﻿function libroSetup() {
    $('#TipoPublicacion').dynamicui(
            [
                ['Libro traducido a otro idioma', ['#idioma_field', '.traductor_field']],
                ['Coordinación de un número especial de revista', ['.coordinacionrevista_field']],
                ['Coordinación de memoria', ['.coordinacionmemoria_field']],
                ['Coordinación de libro sin arbitraje', ['.coordinacionlibro_field']],
            	['Coordinación de libro con arbitraje', ['.coordinacionlibro_field']]
            ]
        );

    $('#TipoPublicacion')[0].dynamic.setup();

    $('#EstadoProducto').dynamicui(
            [
                ['Publicado', ['.publicado_field']]
            ]
        );

    $('#EstadoProducto')[0].dynamic.setup();

    $('#TieneProyecto').dynamicui(
        [
            ['1', ['#SelectProyecto_p']]
        ]
    );

    $('#TieneProyecto')[0].dynamic.setup();

    $('#Traductor').dynamicui(
        [
            ['1', ['.NombreTraductor']]
        ]
    );

    $('#Traductor')[0].dynamic.setup();
}

function capituloSetup() {
    $('#TipoCapitulo').dynamicui(
            [
                ['Capítulo traducido a otro idioma', ['#idioma_field', '#traductor_field']]
            ]
        );

    $('#TipoCapitulo')[0].dynamic.setup();
}

function articuloSetup() {
    $('#EstadoProducto').dynamicui(
            [
                ['Publicado', ['.EstatusPublicado']],
                ['Aceptado', ['#EstatusAceptado']]
            ]
        );

    $('#EstadoProducto')[0].dynamic.setup();
    
    $('#TieneProyecto').dynamicui(
        [
            ['1', ['.TieneProyecto']]
        ]
    );

    $('#TieneProyecto')[0].dynamic.setup();

    $('#ArticuloTraducido').dynamicui(
        [
            ['1', ['#idioma_field']]
        ]
    );

    $('#ArticuloTraducido')[0].dynamic.setup();
}

function participacionSetup() {
    $('#OtraParticipacion').dynamicui(
            [
                ['Platicas', ['#Platicas']],
                ['Presentacion de resultados de investigacion', ['#PresentacionInvestigacion']],
                ['Presentacion de libro', ['#PresentacionLibro_div']]
            ]
        );

    $('#OtraParticipacion')[0].dynamic.setup();
}

function participacionMedioSetup() {
    $('#MedioElectronico').dynamicui(
            [
                ['Otro', ['#OtroMedioElectronico']]
            ]
        );

    $('#MedioElectronico')[0].dynamic.setup();

    $('#MedioImpreso').dynamicui(
            [
                ['*', ['.NotaPeriodistica_p']],
                ['Otro', ['#OtroMedioImpreso']]
            ]
        );

    $('#MedioImpreso')[0].dynamic.setup();
}

function reporteSetup() {
    $('#TipoReporte').dynamicui(
            [
                ['Cuaderno de trabajo', ['.CuadernoTrabajo']],
                ['Informe técnico', ['.ReporteTecnico']]
            ]
        );

    $('#TipoReporte')[0].dynamic.setup();
}

function resenaSetup() {
    $('#TipoResena').dynamicui(
            [
                ['Nota crítica', ['.NotaCritica']],
                ['Reseña bibliográfica', ['#ResenaBibliografica_div']]
            ]
        );

    $('#TipoResena')[0].dynamic.setup();
}

function tesisDirigidaSetup() {
    $('#GradoAcademico').dynamicui(
            [
                ['*', ['#FechaGrado_p']]
            ]
        );

    $('#GradoAcademico')[0].dynamic.setup();
}

function proyectoSetup() {
    $('#RequiereServicioUSEG').dynamicui(
        [
            ['1', ['.RequiereUSEG']]
        ]
    );

    $('#RequiereServicioUSEG')[0].dynamic.setup();

    $('#ParticipaEstudiante').dynamicui(
        [
            ['1', ['.ParticipaEstudiante']]
        ]
    );

    $('#ParticipaEstudiante')[0].dynamic.setup();

    $('#ConConvenio').dynamicui(
        [
            ['1', ['.NombreConvenio']]
        ]
    );

    $('#ConConvenio')[0].dynamic.setup();
}