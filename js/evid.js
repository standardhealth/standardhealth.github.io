
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
    $("#site-menu").collapse('hide');
});

function setActive(str) { 
    $("nav li")
        .removeClass('active')
        .find('a')
        .filter (function (elem) { return this.innerHTML == str})
        .parent()
        .addClass('active');
    return;
}

function parseSectionActive() {
    switch ($(window)[0].location.pathname) { 
        case ("/"):
            switch($window[0].location.hash) { 
                case("#home"): 
                    setActive("HOME");
                    break;
                case("#about"): 
                    setActive("ABOUT");
                    break;
                case("#contact"): 
                    setActive("CONTACT");
                    break;
                default: 
                    alert('on a new section of homepage: ' + $window[0].location.hash);
                    break;
            } 
            break; 
        case ("/evidence.html"):
            setActive("EVIDENCE");
            break;
        case ("/spec.html"):
            setActive("SPEC");
            break;
        case ("/specviewer.html"):
            console.log("Spec viewer isn't in navbar -- skip");
            break;
        case ("/faq.html"):
            setActive("FAQ");
            break;
        default:
            alert('on a new section of homepage: ' + $window[0].location.hash);
            break;
    }
}

$(document).ready(parseSectionActive);