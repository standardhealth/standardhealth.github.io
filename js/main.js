
// Navbar menu functionality" 
//
// Disable double click function on IOS
$('#site-menu a').on('touchend', function(e) {
    const el = $(this);
    const link = el.attr('href');
    window.location = link;
    if ($(this).text().indexOf("SPEC") >= 0) {
        return;
    } else {
        $("#site-menu").collapse('hide');
    }
});
// Close then menu when clicking off of it
$(document).ready(function () {
    $(document).click(function (event) {
        const clickover = $(event.target);
        const _opened = $(".navbar-collapse").hasClass("navbar-collapse collapse in");
        if (_opened && !clickover.hasClass("navbar-toggle")) {
            $("button.navbar-toggle").click();
        }
    });
});
// Close the menu on click of button
$('#site-menu li a').on('click', function(){
    if ($(this).text().indexOf("SPEC") >= 0) {
        return;
    } else {
        $("#site-menu").collapse('hide');
    }   
});

// Equal height functionality for homepage
//
// Stablize heights on doc.ready and resizing
$(document).ready(eqHeight);
$(window).resize(eqHeight);
$(window).load(eqHeight);
// Used to equalize height across eq-h-rows
function eqHeight(){
    $('.eq-h-row').each(function() {
        // Try to autofit the height
        const elems = $(this).find('.eq-h');
        elems.height('auto');

        // If the viewport is large, find biggest innerheight and normalize to that
        if (window.innerWidth >= 992) {
            let maxH = 0;
            elems.each(function() {
                // find max inner height
                maxH = $(this).innerHeight() > maxH ? $(this).innerHeight() : maxH;
            });
            // Change accordingly 
            elems.innerHeight(maxH);
        }
    });
} 

// Set Active functionality for elements in nav bar
//
// Set active element in list based on current page
$(document).ready(parseSectionActive);
// Set active section of homepage based on scrolling location
$(window).scroll(function(event) {
    if (window.location.pathname == "/") { 
        updateActive();
    }
}); 
function parseSectionActive() {
    switch (window.location.pathname.split('/')[1]) { 
        case (""):
            switch(window.location.hash) { 
                case("#home"): 
                    setActive("HOME");
                    break;
                case("#about"): 
                    setActive("ABOUT");
                    break;
                case("#contact"): 
                    setActive("CONTACT");
                    break;
                case(""):
                    setActive("HOME");
                    break;    
                default: 
                    alert('on a new section of homepage: ' + window.location.hash);
                    break;
            } 
            break; 
        case ("evidence.html"):
            setActive("EVIDENCE");
            break;
        case ("spec.html"):
            setActive("SPEC");
            break;
        case ("shr"):
            setActive("SPEC");
            break;
        case ("faq.html"):
            setActive("FAQ");
            break;
        default:
            alert('on a new section of page: ' + window.location.pathname.split('/')[1]);
            break;
    }
}
function setActive(str) { 
    $("nav li")
        .removeClass('active')
        .find('a')
        .filter (function (elem) { return this.innerText == str})
        .parent()
        .addClass('active');
    return;
};