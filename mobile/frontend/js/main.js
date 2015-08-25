/**
 * Template Rendaring
 * @type {EJS}
 */

// Render Navigation
var renderNavigation = new EJS({url: '/mobile/frontend/templates/nav.ejs'}).render();
document.getElementById('ejs-navigation').innerHTML = renderNavigation;

if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
 // some code..
}else{
    $('.navbar .dropdown').hover(function() {
        $(this).find('.dropdown-menu').first().stop(true, true).slideDown(150);
        $(this).addClass('mark-active');
    }, function() {
        $(this).find('.dropdown-menu').first().stop(true, true).slideUp(105);
        $(this).removeClass('mark-active');
    });
}

// Render Footer
var renderFooter = new EJS({url: '/mobile/frontend/templates/footer.ejs'}).render();
document.getElementById('ejs-footer').innerHTML = renderFooter;
// ------------------------------------------------------------------------------------

/**
 *  Typography Responsive
 */

// Footer Typography
$('.fotter-link-contact').flowtype({
    minFont : 10,
    maxFont : 15
});


$('#sliderText').flowtype({
    minFont : 22,
    maxFont : 25
});
$('.home-slam-left').flowtype({
    minFont : 18,
    maxFont : 20
});

$('.ch-left-column h1').flowtype({
    minFont : 20,
    maxFont : 30
});

$('.ch-bordered-title').flowtype({
    minFont : 14,
    maxFont : 16
});

$('.ch-about-table').flowtype({
    minFont : 10,
    maxFont : 15
});

$('.span-title').flowtype({
    minFont : 14,
    maxFont : 17
});

$('.span-title-sub').flowtype({
    minFont : 12,
    maxFont : 17
});

$('.span-property').flowtype({
    minFont : 12,
    maxFont : 15
});

$('.ch-company-ov-table').flowtype({
    minFont : 12,
    maxFont : 15
});








// ------------------------------------------------------------------------------------

/**
 *  Background Slider
 */
var backSlideElm    =   $('.setBackSlider');
var slideCounter    =   0;
var slideMsgs       =   ['Chaity<br>Composite','Our<br>Territory', 'Golf<br>Field'];
$('.back-play').hide();

$(backSlideElm).vegas({
    delay: 7000,
    transition: 'fade',
    transitionDuration: 500,
    cover : true,
    slides: slides,
    init: function (globalSettings) {
        //console.log("Init");
    },
    play: function (index, slideSettings) {
        //console.log("Play");
    },
    walk: function (index, slideSettings) {
        $("#sliderText").html(slides[index].title);
        $("#sliderTextDesc").html(slides[index].desc);
    }
});
$('.back-next').on('click', function () {
    $(backSlideElm).vegas('next');
});

$('.back-prev').on('click', function () {
    $(backSlideElm).vegas('previous');
});

$('.back-pause').on('click', function () {
    $(backSlideElm).vegas('pause');
    $(this).hide();
    $('.back-play').show();
});

$('.back-play').on('click', function () {
    $(backSlideElm).vegas('play');
    $(this).hide();
    $('.back-pause').show();

});

/**
 *  Homepage Slider
 */
$('#garment-slider').bxSlider({
                    mode: 'fade',
                    responsive : false,
                    pager:false,
                    auto: true,
                    nextSelector: '.garmentsctr span.arrow-right',
                    prevSelector: '.garmentsctr span.arrow-left',
                    nextText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>',
                    prevText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>'
});

$('#undergarment-slider').bxSlider({
                    mode: 'fade',
                    responsive : false,
                    pager:false,
                    auto: true,
                    nextSelector: '.under-garmentsctr span.arrow-right',
                    prevSelector: '.under-garmentsctr span.arrow-left',
                    nextText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>',
                    prevText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>'
});

$('#lateestnews-slider').bxSlider({
                            mode: 'fade',
                            responsive : false,
                            pager:false,
                            auto: true,
                          nextSelector: '.latestNewsctr span.arrow-right',
                          prevSelector: '.latestNewsctr span.arrow-left',
                          nextText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>',
                          prevText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>'
    });

$('#majorbuyers-slider').bxSlider({
                    mode: 'fade',
                    responsive : false,
                    pager:false,
                    auto: true,
                    nextSelector: '.clientsctr span.arrow-right',
                    prevSelector: '.clientsctr span.arrow-left',
                    nextText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>',
                    prevText: '<img src="/mobile/frontend/img/icons/right_arrow_1.png"/>'
});

/* Gallery LiteBox */
// delegate calls to data-toggle="lightbox"
$(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
    event.preventDefault();
    return $(this).ekkoLightbox({
        onShown: function() {
            if (window.console) {
                return console.log('Checking our the events huh?');
            }
        },
        onNavigate: function(direction, itemIndex) {
            if (window.console) {
                return console.log('Navigating '+direction+'. Current item: '+itemIndex);
            }
        }
    });
});