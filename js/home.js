// Set active section of homepage based on scrolling location
$(window).scroll(function(event) {
    if ($(window)[0].location.pathname == "/") { 
            updateActive();
    }
}); 