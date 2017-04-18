// Set Active functionality for elements in nav bar
//
// Set active element in list based on current page
$(document).ready(parseSectionActive);
// Parse the active section based on current location
function parseSectionActive() {
    switch (window.location.pathname.split('/')[1]) { 
        case (""):
            switch(window.location.hash) { 
                case("#sitehomepage"): 
                    setActive("HOME");
                    break;
                // For when evid and collab are on separate tabs
                // case("#about"): 
                //     setActive("ABOUT");
                //     break;
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
            setActive("ABOUT");
            break;
        case ("collaborative.html"):
            setActive("ABOUT");
            break;
        //  Separate Evid and collab
        // case ("evidence.html"):
        //     setActive("EVIDENCE");
        //     break;
        // case ("collaborative.html"):
        //     setActive("INITIATIVES");
        //     break;
		case ("spec_terminology.html"):
			setActive("SPEC");
			break;
        case ("spec.html"):
            setActive("SPEC");
            break;
        case ("shr"):
            setActive("SPEC");
            break;
        case ("vs"):
            setActive("SPEC");
            break;
        case ("cs"):
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
