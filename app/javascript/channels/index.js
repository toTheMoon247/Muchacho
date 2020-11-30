// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


$(function () {

    var maxL = 60;

    $('.content').each(function () {

        var text = $(this).text();
        if(text.length > maxL) {

            var begin = text.substr(0, maxL),
                end = text.substr(maxL);

            $(this).html(begin)
                .append($('<a class="readmore"/>').attr('href', '#').html('  read more...'))
                .append($('<div class="hidden" />').html(end));


        }


    });

    $(document).on('click', '.readmore', function () {
        // $(this).next('.readmore').fadeOut("400");
        $(this).next('.hidden').slideToggle(400);
    })


})

