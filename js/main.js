
// // Navbar menu functionality" 
// Set active section of homepage based on scrolling location
$(window).scroll(function(event) {    
    if (window.location.pathname == "/") { 
        updateActive();
    }
}); 
// Update the active location in the nav bar
function updateActive() {
    var linkTops = [];
    var wTop     = $(window).scrollTop();
    var rangeTop = 5;
    $('nav').find('.scroll a').each(function(){
        linkTops.push($(this.hash).offset().top - 200);
    });
    if ($(window).scrollTop() + $(window).height() + 15 >= $(document).height()) {
        $("nav li.scroll")
            .removeClass('active')
            .eq(linkTops.length -1).addClass('active');
        
    } else {
        $.each( linkTops, function(i) {
            if ( wTop > linkTops[i] - rangeTop ){
                $('nav li.scroll')
                    .removeClass('active')     // Drop any active elems (of which there are one)
                    .eq(i).addClass('active'); // Add active to the current element                 
            }
        });
    }
};
// Used to equalize height across eq-h-rows
function eqHeight(){
    $('.eq-h-row').each(function() {
        // Try to autofit the height
        var elems = $(this).find('.eq-h');
        elems.height('auto');

        // If the viewport is large, find biggest innerheight and normalize to that
        if ($(window)[0].innerWidth >= 992) {
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
$(window).load(eqHeight);


// Close the menu on click of button
$('#site-menu li a').on('click', function(){
    if ($(this).text().indexOf("SPEC") >= 0) {
        return;
    } else {
        $("#site-menu").collapse('hide');
    }
});

$(document).ready(function () {
    $(document).click(function (event) {
        const clickover = $(event.target);
        const _opened = $(".navbar-collapse").hasClass("navbar-collapse collapse in");
        if (_opened && !clickover.hasClass("navbar-toggle")) {
            $("button.navbar-toggle").click();
        }
    });
});

$(document).ready(function () {
    $(document).on('click touchend', function (event) {
        const clickover = $(event.target);
        const _opened = $(".navbar-collapse").hasClass("navbar-collapse collapse in");
        if (_opened && !clickover.hasClass("navbar-toggle") && !clickover.hasClass("dropdown-toggle") && !clickover.hasClass("dropdown-elem")) {
            $("button.navbar-toggle").click();
        } else { 
            alert(clickover.text());
        }
    });
});