$(document).ready(function() {
    var step = 1;
    $('.step-divs').hide();
    $('.step-div-1').show();
    $(document).on("click", ".slider-next", function() {
        var thisfor = $(this).attr('for');
        var thislabel = $(this);
        setTimeout(function() {
            if (thisfor == 'slide-2') {
                thislabel.attr('for', 'slide-3');
                thislabel.closest('.slider-arrows').find('.slider-previous').attr('for', 'slide-1');
            } else if (thisfor == 'slide-3') {
                thislabel.closest('.slider-arrows').find('.slider-previous').attr('for', 'slide-2');
            }
        }, 100);
    });
    $(document).on("click", ".slider-previous", function() {
        var thisfor = $(this).attr('for');
        var thislabel = $(this);
        setTimeout(function() {
            if (thisfor == 'slide-1') {
                thislabel.closest('.slider-arrows').find('.slider-next').attr('for', 'slide-2');
            } else if (thisfor == 'slide-2') {
                thislabel.attr('for', 'slide-1');
                thislabel.closest('.slider-arrows').find('.slider-next').attr('for', 'slide-3');
            } else if (thisfor == 'slide-3') {
                thislabel.attr('for', 'slide-2');
                thislabel.closest('.slider-arrows').find('.slider-next').attr('for', 'slide-3');
            }
        }, 100);
    });

    $(document).on("click", ".steps-list li", function() {
        step = $(this).data('step');
        nextStep();
    });
    $(document).on("click", ".btn-next-step", function() {
        step++;
        nextStep();
    });

    function nextStep() {
        $(".steps-list li").removeClass('active');
        $('.steps-list li').prevAll().removeClass("pre-active");
        $('.steps-list li[data-step="' + step + '"]').addClass('active');
        $('.steps-list li[data-step="' + step + '"]').prevAll().addClass("pre-active");
        $('.step-divs').hide();
        $('.step-div-' + step).show();
    }
});