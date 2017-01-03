// Runs updateActive based on current page
function updateActiveOnPage(page) { 
    if (page == "/") { 
        updateActive(".navbar-nav", 100, 30);
    } else if (page == "/faq.html") {
        updateActive(".faq-nav", 200, 30);
    } else if (page == "/evidence.html") {
        updateActive(".evid-nav", 200, 30);
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
    var rangeTop = 5;
    const scrollMod = (navName == ".navbar-nav") ? ".scroll" : "";
    const navLink = navName + " li" + scrollMod;
    const anchor = scrollMod + ' a';
    console.log($(navName))
    $(navName).find(anchor).each(function(){
        linkTops.push($(this.hash).offset().top - elemOffset);
    });
    if ($(window).scrollTop() + $(window).height() + bottomOffset >= $(document).height()) {
        $(navLink)
            .removeClass('active')
            .eq(linkTops.length -1).addClass('active');
        
    } else {
        $.each( linkTops, function(i) {
            if ( wTop > linkTops[i] - rangeTop ){
                $(navLink)
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


// On particular event, close menu if target not an opening elem 
function disableTouchOnEvent(eventType) {
    $(document).on(eventType, function (event) {
        const clickover = $(event.target);
        const _opened = $(".navbar-collapse").hasClass("navbar-collapse collapse in");
        if (_opened && !clickover.hasClass("navbar-toggle") && !clickover.hasClass("dropdown-toggle") && !clickover.hasClass("dropdown-elem")) {
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