 // Update the active location in the nav bar
 function updateActive() {
    var linkTops = [];
    var wTop     = $(window).scrollTop();
    var rangeTop = 5;
    $('#evid_nav').find('a').each(function(){
        linkTops.push($(this.hash).offset().top - 200);
    });
    if ($(window).scrollTop() + $(window).height() + 30 >= $(document).height()) {
        $("#evid_nav li")
            .removeClass('active')
            .eq(linkTops.length -1).addClass('active');
        
    } else {
        $.each( linkTops, function(i) {
            if ( wTop > linkTops[i] - rangeTop ){
                $('#evid_nav li')
                    .removeClass('active')     // Drop any active elems (of which there are one)
                    .eq(i).addClass('active'); // Add active to the current element                 
            }
        });
    }
 }; 

//  function parseLastLinks() {
//     if ($(window).scrollTop() + $(window).height() + 100 >= $(document).height()) { 
//     } else {
//      if ($(window).scrollTop() + $(window).height() + 200 >= $(document).height()) {
//         $("#evid_nav li")
//             .removeClass('active')
//             .eq(linkTops.length - 3).addClass('active');
//         }
//     }
// }