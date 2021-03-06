var refreshRating = function() {
     $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
     $('.rated').raty({ path: '/assets',
       readOnly: true,
       score: function() {
           return $(this).attr('data-score');
        }
     });
};


$(document).on('turbolinks:load ajaxSuccess', function(){
    /* raty plugin */
    refreshRating();

    /* elevate zoom plugin*/
    $(".img-zoom").elevateZoom();
 });
