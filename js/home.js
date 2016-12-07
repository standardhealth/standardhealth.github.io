// Set Active functionality for elements in nav bar
//
// Set active element in list based on current page
$(document).ready(parseSectionActive);

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
function setActive(str) { 
    $("nav li")
        .removeClass('active')
        .find('a')
        .filter (function (elem) { return this.innerText == str})
        .parent()
        .addClass('active');
    return;
};
