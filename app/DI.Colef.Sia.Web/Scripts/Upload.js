﻿var totalSize = 0;

function progress(event, queueID, fileObj, data) {
    $('.status_message').html('Subiendo ' + fileObj.name + '...');
    var stepSize = 200 / totalSize;
    var step = (stepSize * data.allBytesLoaded) * 2;

    $('.progress').attr('style', 'width: ' + step + 'px;');

    return false;
}

function complete(event, queueID, fileObj, response, data) {
    var fileInfo = JSON.parse(response);
    return false;
}

function completeAll(event, data) {
    $('.status_message').html('');
    $('.progress').attr('style', 'width: 0px;');

    $('.progress_container').hide();

    $('#fileQueue img').each(function() {
        $(this).show();
    });
}

function selectOnce(event, data) {
    totalSize = data.allBytesTotal;

    $('span.percentage').each(function() {
        $(this).remove();
    });

    $('div.uploadifyProgress').each(function() {
        $(this).remove();
    });

    if ($('#archivoEmptyListForm').is(':visible')) {
        $('#archivoEmptyListForm').hide();
    }

    $('div.cancel').each(function() {
        var action = $(this).children()[0];
        var id = $(action).attr('href').match(/\('(\w*)'\)/)[1];
        var filename = $('#uploadify' + id + ' > span').text();

        $('#uploadify' + id).addClass('sublista');

        $(action).attr('href', id);
        $(action).click(removeFromQueue);

        $('#uploadify' + id + ' > span').remove();
        $('#uploadify' + id).append('<h6></h6>');
        $('#uploadify' + id + ' > h6').append(action);
        $('#uploadify' + id + ' > h6 > a').after(filename);

        $(this).remove();
    });

    setupSublistRows();    
}

function removeFromQueue() {
    var id = $(this).attr('href');
    $('#uploadify').uploadifyCancel(id);

    if ($('#fileQueue > div.uploadifyQueueItem').length == 1) {
        $('#archivoEmptyListForm').show();
    }

    setupSublistRows();
    
    return false;
}

function startUpload() {
    if ($('#fileQueue > div.uploadifyQueueItem').length == 0) {
        window.location.href = $('#regresar').attr('href');
        return;
    }
    
    $('#fileQueue img').each(function() {
        $(this).hide();
    });

    $('.progress_container').show();

    $('#uploadify').uploadifySettings(
        'scriptData', { '__RequestVerificationToken': $('input:hidden[name=__RequestVerificationToken]').val(), 'investigadorId': $('#Id').val() }
    );
    
    $('#uploadify').uploadifyUpload();
}

function error(event, queueID, fileObj, errorObj) {
    alert('Error');
}

var Upload = {
    fileData: null,
    queue: null,
    queues: 0,
    onSelect: function(event, queueID, fileObj) {
        Upload.fileData = fileObj;
        Upload.queue = queueID;
    },
    onCancel: function(event, queueID, fileObj, data) {
        var display = $('div[id$="' + Upload.queue + '"].uploadifyQueueItem').parent().attr('rel');
        $(display).html('&nbsp;');
    },
    onSelectOnce: function(event, data) {
        if (Upload.fileData == null)
            return;

        var display = $('div[id$="' + Upload.queue + '"].uploadifyQueueItem').parent().attr('rel');
        $(display).html(Upload.fileData.name + '<span>(' + Upload.fileData.size + ')</span>');
        var remove = $('div[id$="' + Upload.queue + '"].uploadifyQueueItem > div.cancel > a');
        $(display + ' > span').append(remove);
    },
    onProgress: function(event, queueID, fileObj, data) {
        $('.status_message').html('Subiendo ' + fileObj.name + '...');
        var stepSize = 200 / fileObj.size;
        var step = (stepSize * data.allBytesLoaded) * 2;

        $('.progress').attr('style', 'width: ' + step + 'px;');

        return false;
    },
    onAllComplete: function(event, data) {
        $('.progress').attr('style', 'width: 0px;');
        Upload.continueUpload();
    },
    startUpload: function() {
        Upload.queues = $('.fileUpload').length;

        Upload.upload();
    },
    continueUpload: function() {
        Upload.queues--;

        Upload.upload();
    },
    upload: function() {
        if (Upload.queues == 0) {
            Upload.finished();
            return;
        }

        var uploadify = Upload.fetchObject($('.fileUpload'), [Upload.queues - 1]);

        if (uploadify == null) {
            Upload.finished();
            return;
        }

        if (uploadify.uploadifySettings('queueSize') > 0) {
            uploadify.uploadifySettings(
                'scriptData',
                {
                    '__RequestVerificationToken': $('input:hidden[name=__RequestVerificationToken]').val(),
                    'Id': $('#Id').val(),
                    'tipoArchivo': $(uploadify).attr('id').split('_')[0]
                });

            $('.progress_container').show();
            uploadify.uploadifyUpload();
        }
        else
            Upload.continueUpload();
    },
    finished: function() {
        $('.progress').attr('style', 'width: 0px;');
        $('.progress_container').hide();
        window.location.href = $('#regresar').attr('href');
    },
    fetchObject: function(object, position) {
        var counter = 0;

        if (position > object.length)
            return null;

        return object.eq(position);
    },
    error: function(event, queueID, fileObj, errorObj) {
        alert('Ocurrió un error al subir archivos adjuntos, es posible que no se hayan grabado.');
        window.location.href = $('#regresar').attr('href');
    }
}