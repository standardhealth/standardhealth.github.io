// Disable double click function on IOS
$('a').on('touchend', function(e) {
    var el = $(this);
    var link = el.attr('href');
    window.location = link;
});
// Used to equalize height across eq-h-rows
function eqHeight(){
    $('.eq-h-row').each(function() {
        // Try to autofit the height
        var elems = $(this).find('.eq-h');
        elems.height('auto');

        // If the viewport is large, find biggest innerheight and normalize to that
        if ($(window)[0].innerWidth >= 768) {
            var maxH = 0;
            elems.each(function() {
                // find max inner height
                maxH = $(this).innerHeight() > maxH ? $(this).innerHeight() : maxH;
            });
            // Change accordingly 
            elems.innerHeight(maxH);
        }
    });
} 

// Stablize heights on doc.ready and resizing
$(document).ready(eqHeight);
$(window).resize(eqHeight);


// Close the menu on click of button
$('#site-menu li a').on('click', function(){
    if ($(this).text().indexOf("SPEC") >= 0) {
        return;
    } else {
        $("#site-menu").collapse('hide');
    }
});


function setActive() { 
    $("#site-menu li")
        .removeClass('active')
        .find('a').not(".dropdown-elem")
        .filter (function (elem) { return $(this).text().indexOf("SPEC") >= 0})
        .parent()
        .addClass('active');
    return;
}

$(document).ready(setActive);

$(window).scroll(function(event) {
        updateActive();
}); 
// $(document).click(function(event) {
//         updateActive();
// });
// Update the active location in the nav bar
function updateActive() {
    var linkTops = [];
    var wTop     = $(window).scrollTop();
    var rangeTop = 5;
    $('#faq_nav').find('a').each(function(){
        linkTops.push($(this.hash).offset().top - 50);
    });
    if ($(window).scrollTop() + $(window).height() + 15 >= $(document).height()) {
        $("#faq_nav li")
            .removeClass('active')
            .eq(linkTops.length -1).addClass('active');
        
    } else {
        $.each( linkTops, function(i) {
            if ( wTop > linkTops[i] - rangeTop ){
                $('#faq_nav li')
                    .removeClass('active')     // Drop any active elems (of which there are one)
                    .eq(i).addClass('active'); // Add active to the current element                 
            }
        });
    }
};