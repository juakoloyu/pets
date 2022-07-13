// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"
import 'bootstrap'
import Swiper from 'swiper'

	new Swiper('.swiper', {
		slidesPerView: 3,
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
				slidesPerView: 2,
				//spaceBetween: 20,
			},
			768: {
				slidesPerView: 2,
				//spaceBetween: 40,
			},
			1024: {
				slidesPerView: 3,
				//spaceBetween: 50,
			},
		},
	});
