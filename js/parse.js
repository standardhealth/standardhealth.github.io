// Set Active functionality for elements in nav bar
//
// Set active element in list based on current page
$(document).ready(parseSectionActive);
// Parse the active section based on current location
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
        case ("evidence-nav.html"):
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
// Set active location based on given text
function setActive(str) { 
    $("nav li")
        .removeClass('active')
        .find('a')
        .filter (function (elem) { return this.innerText == str})
        .parent()
        .addClass('active');
    return;
};


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