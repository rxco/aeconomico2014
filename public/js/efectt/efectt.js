$(window).load(function(){
    var $container = $('.efecto');
    $container.isotope({
        filter: '*',
        animationOptions: {
            duration: 750,
            easing: 'linear',
            queue: false
        }
    });
 
    $('.filtrar a').click(function(){
        $('.filtrar .actual').removeClass('actual');
        $(this).addClass('actual');
 
        var selector = $(this).attr('data-filter');
        $container.isotope({
            filter: selector,
            animationOptions: {
                duration: 900,
                easing: 'linear',
                queue: false
            }
         });
         return false;
    }); 
});