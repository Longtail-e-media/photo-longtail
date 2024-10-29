// menubar

// navbar on scroll
$(document).on("scroll",function(){
if ($(document).scrollTop() > 50){
 $(".nav_bar").addClass("navbar_onscroll");
  }else {
    $(".nav_bar").removeClass("navbar_onscroll");
  }  
//   if ($(document).scrollTop() > 60 && window.innerWidth > 500){
//     $(".date_pickers").addClass("date_picker_bottom");
//      }else {
//       $(".date_pickers").removeClass("date_picker_bottom");
//      }
});

const nav_link = document.querySelector(".navbar-brand");
const base_url = window.location.origin +'/photolongtail/';


// document.addEventListener("DOMContentLoaded", function() {
// window.addEventListener('scroll', function() {
//     var date_picker_bottom = document.querySelector('.date_picker_bottom');
//     var scrollTop = window.scrollY || window.pageYOffset;

//     if (scrollTop >140) { 
//         date_picker_bottom.classList.add('visible');
//     } else {
//         date_picker_bottom.classList.remove('visible');
//     }
//     if(innerWidth<500){
//         date_picker_bottom.classList.remove('visible');
//     }
// });
// });


// navbar on scroll end

// data picker
// $( function() {
//   $( "#Check_in").datepicker();
//   $( "#Check_out").datepicker();
// } );

// data picker
// homepage slider
$('.owl-carousel.image__slider').owlCarousel({
    loop:true,
    margin:10,
    autoplay: true,
    slideSpeed: 5000,

    animateOut: 'fadeOut',
    nav:true,
    navText: ["<img src = 'template/web/image/icons/left_arrow.png'>", "<img src = 'template/web/image/icons/rgihtarrow.png'>"],
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})
// homepage slider end
// homepage room slider
$('.owl-carousel.rooms__slider').owlCarousel({
    loop:true,
    margin:40,
    autoplay: true,
    nav:true,
    navText: ["<img class='nav__icons' src='template/web/image/icons/left_arrow.png'>", "<img  class ='nav__icons' src = 'template/web/image/icons/rgihtarrow.png'>"],
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
})

$('.owl-carousel.text_decoration').owlCarousel({
    loop:true,
    autoplay: true,
    margin: 30,
    nav:false,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:1
        }
    }
})
// homepage  roomslider end



$('.dining_image_slider.owl-carousel, .rooms_inner_slider.owl-carousel').owlCarousel({
    loop:true,
    margin:40,
    autoplay: true,
    nav:true,
    navText: ["<img src = 'template/web/image/icons/left_arrow.png'>", "<img src = 'template/web/image/icons/rgihtarrow.png'>"],
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})
// other room display
$('.rooms_other_slider.owl-carousel').owlCarousel({
    loop:false,
    margin:40,
    autoplay: true,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
})
// other room display

//innerPage nav links
let uri = window.location.pathname;
let pathName = uri.substring(uri.lastIndexOf('/'));
const whiteNav = ["/", "/gallery-list", "/contact-us"];
console.log(pathName);
if (!whiteNav.includes(pathName)) {
    $('.navbar-expand-lg .navbar-nav .nav-link').addClass('black');
    $('.dropdown.search_dropdown img').addClass('filter-none');
    $('.dropdown-input').addClass('black').addClass('custom-placeholder');
    console.log(true);
} else {
    $('.navbar-expand-lg .navbar-nav .nav-link').removeClass('black');
    $('.dropdown.search_dropdown img').removeClass('filter-none');
    $('.dropdown-input').removeClass('black').removeClass('custom-placeholder');
    console.log(false)
}