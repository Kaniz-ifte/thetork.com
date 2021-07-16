  $(function ($) {
    'use strict';

    $('.icon_menu').on('click', function(){
      $(this).parents().toggleClass('menu-expent');
    })
    /* ---------------------------------------------
         page  Prealoader
     --------------------------------------------- */
    $(window).on('load', function () {
        $("#loading-center-page").fadeOut();
        $("#loading-page").delay(400).fadeOut("slow");
    });




     /* ---------------------------------------------
         Sticky header
     --------------------------------------------- */
    $(window).on('scroll', function () {
        var scroll_top=$(window).scrollTop();

        if (scroll_top > 40){
            $('.navbar').addClass('sticky');

        }
        else{
          $('.navbar').removeClass('sticky');
        }

    });






    /* ---------------------------------------------
     owl caroussel
     --------------------------------------------- */




    $('.application-slider ').owlCarousel({
       nav: !0,
     dots: true,
     autoplay: true,
     autoplayTimeout: 5000,
     smartSpeed: 500,
     items:1,
     loop:true,
     responsive: {
          0: {
               nav: !1
          },
          768: {
               nav: !0
          }
     }
    });



    $('.client-caroussel').owlCarousel({
        loop: true,
        responsiveClass: true,
        nav: false,
        dots: false,
        margin:15,
        autoplay: true,
        autoplayTimeout: 4000,
        smartSpeed: 500,
        responsive: {
            0: {
                items: 2,
            },
            600: {
                items: 5

            },
            1200: {
                items: 5
            }
        }
    });



     $('.portfolio-caroussel').owlCarousel({
        loop: true,
        responsiveClass: true,
        nav: true,
        dots: false,
        autoplay: true,
        autoplayTimeout: 4000,
        smartSpeed: 500,
        navText: ['<span class="arrow_carrot-left"></span>', '<span class="arrow_carrot-right"></span>'],
        responsive: {
            0: {
                items: 1,
            },
            600: {
                items: 1

            },
            1200: {
                items: 1
            }
        }
    });





    /*----------------------------------------------------*/
    /*  VIDEO POP PUP
    /*----------------------------------------------------*/
    /* magnificPopup img view */
$('.popup-image').magnificPopup({
    type: 'image',
    gallery: {
        enabled: true
    }
});
    /* magnificPopup video view */
$('.popup-video').magnificPopup({
    type: 'iframe'
});

    /* ---------------------------------------------
     Back top page scroll up
     --------------------------------------------- */


    $.scrollUp({
        scrollText: '<i class="arrow_carrot-2up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });


    /* ---------------------------------------------
     WoW plugin
     --------------------------------------------- */

    new WOW().init({
        mobile: true,
    });

    /* ---------------------------------------------
     Smooth scroll
     --------------------------------------------- */

    $('a.section-scroll[href*="#"]:not([href="#"])').on('click', function (event) {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') ||
            location.hostname == this.hostname) {

            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if (target.length) {
                // Only prevent default if animation is actually gonna happen
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: target.offset().top
                }, 750);
                return false;
            }
        }
    });

$('.portfolio-testimonial-slider').owlCarousel({
    loop: !0,
    items:1,
    autoplay: true,
    smartSpeed: 5000,
    dots: !0,
    animateOut: "slideOutDown",
    animateIn: "customFlipInX",
    });
// banner slider

$('.banner-slide').slick({
  speed: 300,
  autoplay:true,
  pauseOnHover: false,
  autoplaySpeed: 6000,
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite: true,
  dots:true,
   arrows: false,
  responsive: [
    {
      breakpoint: 1025,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
         slidesToScroll: 1
      }
    }
  ]
});

// Team slider
     $('.team-slide').slick({
       speed: 300,
       autoplay: true,
       pauseOnHover: false,
       autoplaySpeed: 4000,
       slidesToShow: 4,
       slidesToScroll: 1,
       infinite: true,
       dots:true,
       prevArrow:"<button type='button' class='slick-prev pull-left'><i class='fas fa-chevron-left'></i></button>",
       nextArrow:"<button type='button' class='slick-next pull-right'><i class='fas fa-chevron-right'></i></button>",
        arrows: false,
       responsive: [
         {
           breakpoint: 1024,
           settings: {
             slidesToShow: 3
           }
         },
         {
           breakpoint: 600,
           settings: {
             slidesToShow: 2
           }
         },
         {
           breakpoint: 480,
           settings: {
             slidesToShow: 2
           }
         }
       ]
     });

     // isotope js
     $(window).on('load', function(){
         $('.filter-button-group').on( 'click', 'button', function() {
         var filterValue = $(this).data('filter');
         $grid.isotope({ filter: filterValue });
       });

       var $grid = $('.grid').isotope({
         // set itemSelector so .grid-sizer is not used in layout
         itemSelector: '.grid-item',
         percentPosition: true,
         layoutMode: 'fitRows',
         masonry: {
           // use element for option
           columnWidth: '.grid-item'
         }
       });

         $('.portfolio-buttons button').on('click',function(){
             $('.portfolio-buttons button').removeClass("selected");
             $(this).addClass("selected");
       });
     });



     // Tooltip js
     $(function () {
       $('[data-toggle="tooltip"]').tooltip()
     });





});
