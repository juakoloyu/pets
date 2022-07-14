import { Controller } from "@hotwired/stimulus"
import Swiper from "swiper"
// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    new Swiper('.swiper', {
      slidesPerView: 1,
      // spaceBetween: 30,
      //slidesPerGroup: 1,
      loop: true,
      // pagination: {
      //   el: ".swiper-pagination",
      //   clickable: true,
      // },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      breakpoints: {
        480: {
          slidesPerView: 1,
          //spaceBetween: 20,
        },
        640: {
          slidesPerView: 1,
          //spaceBetween: 20,
        },
        768: {
          slidesPerView: 3,
          //spaceBetween: 40,
        },
        1024: {
          slidesPerView: 3,
          //spaceBetween: 50,
        },
      },
    });
  }
}
