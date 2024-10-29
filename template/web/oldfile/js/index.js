// menubar
$(document).ready(function(){
    $('.ota_logo').load("ota_logo.html");
    $('.footer_ajax').load("footer.html");
});
// navbar on scroll
$(document).on("scroll",function(){
if ($(document).scrollTop() > 50){
 $(".nav_bar").addClass("navbar_onscroll");
  }else {
    $(".nav_bar").removeClass("navbar_onscroll");
  }  
  if ($(document).scrollTop() > 60 && window.innerWidth > 500){
    $(".date_pickers").addClass("date_picker_bottom");
     }else {
       $(".date_pickers").removeClass("date_picker_bottom");
     }
});

const nav_link = document.querySelector(".navbar-brand");
const base_url = window.location.origin;
nav_link.href = `${base_url}/project/index.html`;
// add active class
// document.addEventListener("DOMContentLoaded", function() {
//     const activeClass = document.querySelectorAll(".nav-item");
//     const btnActive = () => {
//         activeClass.forEach(actve => actve.classList.remove('active'));
//     };

//     activeClass.forEach(actve => {
//         actve.addEventListener('click', () => {
//             btnActive();
//             actve.classList.add('active');
//         });
//     });
// });

document.addEventListener("DOMContentLoaded", function() {
window.addEventListener('scroll', function() {
    var date_picker_bottom = document.querySelector('.date_picker_bottom');
    var scrollTop = window.scrollY || window.pageYOffset;

    if (scrollTop >140) { 
        date_picker_bottom.classList.add('visible');
    } else {
        date_picker_bottom.classList.remove('visible');
    }
    if(innerWidth<500){
        date_picker_bottom.classList.remove('visible');
    }
});
});


// navbar on scroll end

// data picker
$( function() {
  $( "#Check_in").datepicker();
  $( "#Check_out").datepicker();
} );

// data picker
// homepage slider
$('.owl-carousel.image__slider').owlCarousel({
    loop:true,
    margin:10,
    autoplay: true,
    nav:true,
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
            items:2
        }
    }
})
// homepage  roomslider end



$('.dining_image_slider.owl-carousel, .rooms_inner_slider.owl-carousel').owlCarousel({
    loop:true,
    margin:40,
    autoplay: true,
    nav:true,
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
    loop:true,
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