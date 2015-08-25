/* Home small content sliders */
var shouldHide = false;

/*
*
* Document redy Functions
*
*/
if(window.addEventListener){
  window.addEventListener('DOMContentLoaded', function() {


    new QueryLoader2(document.querySelector("body"), {
        barColor: "#FAFAFA",
        backgroundColor: "#33691E",
        percentage: true,
        barHeight: 1,
        minimumTime: 200,
        fadeOutTime: 1000
    });


});
}


$(document).ready(function () {

    // Navigation Dropdown Init --------------------------------------------
    var isIE = (navigator.userAgent.indexOf("MSIE") != -1);
    var isIE11 = !!navigator.userAgent.match(/Trident.*rv[ :]*11\./);
    var is_firefox = navigator.userAgent.toLowerCase().indexOf('firefox') > -1;
    if((!isIE) && (!isIE11) && (!is_firefox)){
        $('.navbar .dropdown').hover(function() {
          $(this).find('.dropdown-menu').first().stop(true, true).slideDown(150);
          $(this).addClass('mark-active');
        }, function() {
          $(this).find('.dropdown-menu').first().stop(true, true).slideUp(105);
          $(this).removeClass('mark-active');
        });
    }
    /*

    */
    // ----------------------------------------------------------------------

    /*
    window.setInterval(function(){
      if(shouldHide){
          $('.slam-content').fadeOut();
      }
    }, 3000);
*/


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



function ar() {
  function gcd(x,y){return !y?x:gcd(y,x%y);}
  var s=screen, w=s.width, h=s.height, r=gcd(w,h);
  //return w/r+':'+h/r; // Return the Aspect-Ratio String
  return w/r; // Return the Aspect-Ratio String
}

/* Set Height container */

function doOnBrowserSize(){
    var getBrowserHeight    = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
    var getBrowserWidth     = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
    var contentHeightSet    = getBrowserHeight - ((getBrowserHeight * 17.5) /100);
    var isIE = (navigator.userAgent.indexOf("MSIE") != -1);
    var isIE11 = !!navigator.userAgent.match(/Trident.*rv[ :]*11\./);
    var is_firefox = navigator.userAgent.toLowerCase().indexOf('firefox') > -1;
    var ratioScreen = ar();

    if(parseInt(getBrowserWidth) < 1030) {
        $('#mainNavigation.navbar-default .navbar-nav > li >a').css('font-size','9px');
    }else{
      //console.log('nnnn');
    }


    // IE < 11
    if(isIE){

        if(getBrowserHeight > 768) {
            $('.cht-push-left').css('margin-top','0%');
            $('.cht-push-left').css('min-height', contentHeightSet+'px');
            $('.cht-push-left').css('height', contentHeightSet+'px');
            $('.cht-push-right').css('margin-top','0%');
            $('.cht-push-right').css('min-height', contentHeightSet+'px');
            $('.cht-push-right').css('height', contentHeightSet+'px');
        }else{
            var contentHeightSet    = getBrowserHeight - ((getBrowserHeight * 22) /100);
            $('.cht-push-left').css('margin-top','0%');
            $('.cht-push-left').css('min-height', contentHeightSet+'px');
            $('.cht-push-left').css('height', contentHeightSet+'px');
            $('.cht-push-right').css('margin-top','0%');
            $('.cht-push-right').css('min-height', contentHeightSet+'px');
            $('.cht-push-right').css('height', contentHeightSet+'px');
        }
        $('.cht-push-right').css('min-width', '600px');
        $('.chy-onek-text').css('height', contentHeightSet-40+'px');
        $('.chy-onek-text').css('margin-top', 20+'px');

        // .vertical-center
        //$('.vertical-center').css();
        $( ".vertical-center" ).removeClass( "vertical-center" );
        $(".chy-onek-text").css("overflow","auto !important");
        $(".slider-controler-btngrp").css("margin-left","-30%");


    }

    // Firefox
    if(is_firefox){
        $( ".vertical-center" ).removeClass( "vertical-center" );
        if(getBrowserHeight > 768) {
            $('.cht-push-left').css('margin-top','0%');
            $('.cht-push-left').css('min-height', contentHeightSet+'px');
            $('.cht-push-left').css('height', contentHeightSet+'px');
            $('.cht-push-right').css('margin-top','0%');
            $('.cht-push-right').css('min-height', contentHeightSet+'px');
            $('.cht-push-right').css('height', contentHeightSet+'px');
        }else{
            var contentHeightSet    = getBrowserHeight - ((getBrowserHeight * 22) /100);
            $('.cht-push-left').css('margin-top','0%');
            $('.cht-push-left').css('min-height', contentHeightSet+'px');
            $('.cht-push-left').css('height', contentHeightSet+'px');
            $('.cht-push-right').css('margin-top','0%');
            $('.cht-push-right').css('min-height', contentHeightSet+'px');
            $('.cht-push-right').css('height', contentHeightSet+'px');
        }
        //$('.cht-push-right').css('min-width', '600px');
        $('.chy-onek-text').css('height', contentHeightSet-40+'px');
        $('.chy-onek-text').css('margin-top', 20+'px');

        $('.assign-scroll').perfectScrollbar({
        suppressScrollX: true
    });
    }

    // IE 11
    if(isIE11){
        $(".vertical-center").css('margin-top','0%');
        if(getBrowserHeight > 768) {
            $('.cht-push-left').css('margin-top','2%');
            $('.cht-push-left').css('min-height', contentHeightSet-50 +'px');

            $('.cht-push-left').css('height', contentHeightSet-80 +'px');
            $('.cht-push-right').css('margin-top','2%');
            $('.cht-push-right').css('padding-bottom', '20px');
            $('.cht-push-right').css('overflow','hidden');
            $('.cht-push-right').css('min-height', contentHeightSet-50 +'px');
            $('.cht-push-right').css('height', contentHeightSet+'px');
        }else{
            var contentHeightSet    = getBrowserHeight - ((getBrowserHeight * 22) /100);
            $('.cht-push-left').css('margin-top','2%');
            $('.cht-push-left').css('min-height', contentHeightSet-50 +'px');

            $('.cht-push-left').css('height', contentHeightSet-80 +'px');
            $('.cht-push-right').css('margin-top','2%');
            $('.cht-push-right').css('padding-bottom', '20px');
            $('.cht-push-right').css('overflow','hidden');
            $('.cht-push-right').css('min-height', contentHeightSet-50 +'px');
            $('.cht-push-right').css('height', contentHeightSet-50 +'px');
        }
        //$('.cht-push-right').css('min-width', '600px');
        $('.chy-onek-text').css('height', contentHeightSet-40+'px');
        $('.chy-onek-text').css('margin-top', 20+'px');

        $('.assign-scroll').perfectScrollbar({
        suppressScrollX: true
    });
    }

    // Other Browsers
    if((!isIE) && (!isIE11) && (!is_firefox)){
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
        //$('.cht-push-right').css('min-width', '600px');
        $('.chy-onek-text').css('height', contentHeightSet-40+'px');
        $('.chy-onek-text').css('margin-top', 20+'px');

        $('.assign-scroll').perfectScrollbar({
        suppressScrollX: true
    });
    }


    if(ratioScreen < 8){
        $("#mainNavigation.navbar-default .navbar-nav > li >a").css("font-size","5px;");
        console.log('Font small');
    }
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