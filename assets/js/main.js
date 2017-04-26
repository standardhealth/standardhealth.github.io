// Runs updateActive based on current page

function updateActiveOnPage(page) { 
    if (page == "/") { 
        updateActive(".navbar-nav", 100, 30);
    } else if (page == "/faq.html") {
        updateActive(".faq-nav", 200, 30);
    } else if (page == "/evidence.html") {
        updateActive(".evid-nav", 200, 30);
    } else if (page == "/spec_terminology.html") {
        updateActive(".term-nav", 200, 30);
    } else { 
        return
    }
}

// Update the active location in the nav bar based on the navbar name, 
// how far above an element counts as a new-element trigger, and how far above 
// the bottom of the page counts as the bottom-of-the-page trigger
function updateActive(navName, elemOffset, bottomOffset) {
    var linkTops = [];
    var wTop     = $(window).scrollTop();
    var rangeTop = 15;
    const scrollMod = (navName == ".navbar-nav") ? ".scroll" : "";
    const navLink = navName + " li" + scrollMod;
    const anchor = scrollMod + ' a';
    $(navName).find(anchor).each(function(){
        linkTops.push($(this.hash).offset().top - elemOffset);
    });
    if ($(window).scrollTop() + $(window).height() + bottomOffset >= $(document).height()) {
        $(navName + " li").removeClass('active');
        $(navLink)
            .removeClass('active')
            .eq(linkTops.length -1).addClass('active');
    } else {
        $.each( linkTops, function(i) {
            if (wTop > linkTops[i] - rangeTop){
                if ($(navLink).eq(i)[0].innerText == "SHR COLLABORATIVE") {
                    $(navName + " li").removeClass('active');
                    $(navLink).removeClass('active');
                    $(navName + " li.aboutNav").addClass('active');
                } else {
                    $(navName + " li").removeClass('active');
                    $(navLink)
                        .removeClass('active')     // Drop any active elems (of which there are one)
                        .eq(i).addClass('active'); // Add active to the current element                 
                }
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


// On particular event, close menu if target not an opening elem 
function disableTouchOnEvent(eventType) {
    $(document).on(eventType, function (event) {
        const clickover = $(event.target);
        const _opened = $(".navbar-collapse").hasClass("navbar-collapse collapse in");
        if (_opened && !clickover.hasClass("navbar-toggle") && !clickover.hasClass("dropdown-toggle") && !clickover.hasClass('dropdown-elem') && !clickover.hasClass('tt-input')) {
            $("button.navbar-toggle").click();
        }
    });
}


// Creater sticky footer 
function stickOnSmall() {
    if ($(".wrapper").height() > window.innerHeight) {
        $("body").height("");
    }  else { 
        $("body").height("100%");
    }
} 


function snackbarGeneration() { 
    var d = new Date();
    var endDate = new Date("3/29/2017");
    var options =  {    
        // HIMSS Content: 
        // content: "<i class='snackbar-close fa fa-times fa-lg' aria-hidden='true'></i>" + 
        //           "<p>We're going to be at HIMSS, February 22, 2017! <a href='http://www.himssconference.org/session/standard-health-records-legal-and-policy-challenges'>Click here</a> for details on our presentation, \"Standard Health Records: The Legal and Policy Challenges.\"</p>", // text of the snackbar 
        // 
        // HL7 Content
        // content: "<p> Synthetic Mass and Synthea are at HL7's FHIR Applications Roundtable, March 7-8, 2017. <a href='http://www.hl7.org/events/fhir/roundtable/2017/03/index_7.cfm#whatIsFHIR'> Click here to learn more about the event!</a></p>",
        //
        // Amia Datathon
        content: "<p> Synthea and Synthetic Mass are at HL7-AMIA's Datathon, March 26, 2017. <a href='https://www.amia.org/jointsummits2017/datathon'> Click here to learn more about the event!</a></p>",
        htmlAllowed: true, // allows HTML as content value
        timeout: 10000 // time in milliseconds after the snackbar autohides, 0 is disabled
    };



    // If HIMSS hasn't ended yet and we're on the home bottom-of-the-page 
    if (window.location.pathname === "/" && (d.getTime() <= endDate.getTime())) { 
        setTimeout(function() {
            var snackbarId = $.snackbar(options);
            $("#snackbar-container").on("click", function(event) {
                if ($(event.target).hasClass("snackbar-close")) {
                    $("#snackb/arId").snackbar("hide")
                } else { 
                    window.open($(this).find('a')[0].href);
                }
            });
        }, 1500);
    }
}



// When doc is ready...
$(function () {
    // Stick footer if small enough
    stickOnSmall();
    // Disable menu when touchend is picked up on non-menu elementes
    disableTouchOnEvent('touchend');
    // Disable menu when click is picked up on non-menu elementes
    disableTouchOnEvent('click');
    //Stablize heights
    eqHeight();
    // Determine how to update the page based on the current page
    updateActiveOnPage(window.location.pathname);
    // generate snackbars if appropriate
    snackbarGeneration();
});


// When window is resizing...
$(window).resize(function () { 
    // Stick footer if small enough
    stickOnSmall();
    // Stablize heights on doc.ready and resizing
    eqHeight();
});


// When window is scrolling...
$(window).scroll(function(event) {    
    // Update active based on page
    updateActiveOnPage(window.location.pathname);
}); 

