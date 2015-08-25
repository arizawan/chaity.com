var shouldHide;
/*
*
* Document redy Functions
*
*/
jQuery(document).ready(function () {
    // Navigation Dropdown Init --------------------------------------------
    $('.navbar .dropdown').hover(function() {
      $(this).find('.dropdown-menu').first().stop(true, true).slideDown(150);
      $(this).addClass('mark-active');
    }, function() {
      $(this).find('.dropdown-menu').first().stop(true, true).slideUp(105);
      $(this).removeClass('mark-active');
    });
    // ----------------------------------------------------------------------
    window.setInterval(function(){
      if(shouldHide){
          $('.slam-content').fadeOut();
      }
    }, 3000);
    $('.assign-scroll').perfectScrollbar({
        suppressScrollX: true
    });
    // delegate calls to data-toggle="lightbox"
    $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
        event.preventDefault();
        return $(this).ekkoLightbox({
            onShown: function() {
                if (window.console) {
                    return //console.log('Checking our the events huh?');
                }
            },
            onNavigate: function(direction, itemIndex) {
                if (window.console) {
                    return //console.log('Navigating '+direction+'. Current item: '+itemIndex);
                }
            }
        });
    });
});
/*
*
* Background Slider function
*
*/
var backSlideElm    =   $('body');
var slideCounter  = 0;
var slideMsgs     = ['Chaity<br>Composite','Our<br>Territory', 'Golf<br>Field'];
$('.back-play').hide();
$(backSlideElm).vegas({
    delay: 7000,
    transition: 'fade',
    transitionDuration: 500,
    cover : true,
    //align : 'right',
    //valign : 'bottom',
    //overlay: "/images/overlays/05.png",
    slides: slides,
    init: function (globalSettings) {
        //console.log("Init");
    },
    play: function (index, slideSettings) {
        //console.log("Play");
    },
    walk: function (index, slideSettings) {
        //console.log("Slide index " + index + " image " + slideSettings.src);
        $("#sliderText").html(slides[index].title);
        $("#sliderTextDesc").html(slides[index].desc);
    }
});
$(backSlideElm).on('vegaspause', function (e, index, slideSettings) {
    //console.log("Pause on Slide index " + index);
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
/* Home small content sliders */
var shouldHide = false;
$( ".slam-right-btns.garmentsSlider" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
      $('.slam-content').html(content).hide();
      $('.slam-content').attr('style', 'margin-left: 17% !important; width:250px  !important;  margin-top: -27px !important;');
      $('#garment-slider').bxSlider({
                            mode: 'fade',
                            responsive : false,
                            pager:false,
                            auto: true,
                            nextSelector: '.garment-slider.controls span.arrow-right',
                            prevSelector: '.garment-slider.controls span.arrow-left',
                            nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                            prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                            onSliderLoad: function(){
                              $('.slam-content').fadeIn();
                              shouldHide  = false;
                            },
      });
  })
.mouseleave(function() {
  shouldHide  = true;
});
$( ".slam-right-btns.underGarmentSlider" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
    $('.slam-content').html(content).hide();
    $('.slam-content').attr('style', 'margin-left: 17% !important; width:250px !important; margin-top: -27px !important;');
    $('#undergarment-slider').bxSlider({
                          mode: 'fade',
                          responsive : false,
                          pager:false,
                          auto: true,
                          nextSelector: '.garment-slider.controls.undergarment span.arrow-right',
                          prevSelector: '.garment-slider.controls.undergarment span.arrow-left',
                          nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          onSliderLoad: function(){
                            $('.slam-content').fadeIn();
                            shouldHide  = false;
                          },
    });
  })
.mouseleave(function() {
  shouldHide  = true;
});
$( ".slam-right-btns.majorBuyers" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
    $('.slam-content').html(content).hide();
    $('.slam-content').attr('style', 'margin-left: 17% !important; width:250px !important; margin-top: -27px !important;');
    $('#majorbuyers-slider').bxSlider({
                          mode: 'fade',
                          responsive : false,
                          pager:false,
                          auto: true,
                          speed:100,
                          nextSelector: '.garment-slider.controls.majorbuyer span.arrow-right',
                          prevSelector: '.garment-slider.controls.majorbuyer span.arrow-left',
                          nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          onSliderLoad: function(){
                            $('.slam-content').fadeIn();
                            shouldHide  = false;
                          },
    });
  })
.mouseleave(function() {
  shouldHide  = true;
});
$( ".slam-right-btns.latestNews" )
  .mouseenter(function() {
      var content     = ($(this).attr('data-content'));
    $('.slam-content').html(content).hide();
    $('.slam-content').attr('style', 'margin-left: 17% !important; width:220px !important; margin-top: -27px !important; ');
    $('#lateestnews-slider').bxSlider({
                          mode: 'vertical',
                          responsive : false,
                          pager:false,
                          auto: true,
                          slideWidth: 250,
                          minSlides: 2,
                          maxSlides: 2,
                          slideMargin: 10,
                          nextSelector: '.garment-slider.controls.latestNews span.arrow-right',
                          prevSelector: '.garment-slider.controls.latestNews span.arrow-left',
                          nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                          onSliderLoad: function(){
                            $('.slam-content').fadeIn();
                            shouldHide  = false;
                          },
    });
  })
.mouseleave(function() {
  shouldHide  = true;
});
$( ".slam-content" ).mouseenter(function() {
  shouldHide  = false;
});
$( ".slam-content" ).mouseleave(function() {
  $('.slam-content').fadeOut();
  shouldHide  = false;
});
$('#cirt-slider').bxSlider({
                    mode: 'fade',
                    responsive : false,
                    pager:false,
                    auto: false,
                    nextSelector: '.garment-slider.controls span.arrow-right',
                    prevSelector: '.garment-slider.controls span.arrow-left',
                    nextText: '<img src="/frontend/images/icons/right_arrow_1.png"/>',
                    prevText: '<img src="/frontend/images/icons/right_arrow_1.png"/>'
});
/* Set Height container */
function doOnBrowserSize(){
    var getBrowserHeight    = window.innerHeight;
    var getBrowserWidth     = window.innerWidth;
    var contentHeightSet    = getBrowserHeight - ((getBrowserHeight * 17.5) /100);
    if(getBrowserHeight > 768) {
        $('.cht-push-left').css('margin-top','2%');
        $('.cht-push-left').css('min-height', contentHeightSet+'px');
        $('.cht-push-left').css('height', contentHeightSet+'px');
        $('.cht-push-right').css('margin-top','2%');
        $('.cht-push-right').css('min-height', contentHeightSet+'px');
        $('.cht-push-right').css('height', contentHeightSet+'px');
    }else{
        var contentHeightSet    = getBrowserHeight - ((getBrowserHeight * 22) /100);
        $('.cht-push-left').css('margin-top','2%');
        $('.cht-push-left').css('min-height', contentHeightSet+'px');
        $('.cht-push-left').css('height', contentHeightSet+'px');
        $('.cht-push-right').css('margin-top','2%');
        $('.cht-push-right').css('min-height', contentHeightSet+'px');
        $('.cht-push-right').css('height', contentHeightSet+'px');
    }
    $('.cht-push-right').css('min-width', '600px');
    $('.chy-onek-text').css('height', contentHeightSet-40+'px');
    $('.chy-onek-text').css('margin-top', 20+'px');
    //console.log(getBrowserHeight+':'+getBrowserWidth+':'+contentHeightSet);
}
;
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
 // some code..
}else{
    doOnBrowserSize();
}
window.onresize = function(event) {
    if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
     // some code..
    }else{
        doOnBrowserSize();
    }
};