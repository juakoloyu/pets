class SwiperController < ApplicationController
  def home
    @posts = Post.not_adopted
    render template: 'swiper/swiper'
  end

  def my
    @posts = Post.all
    render template: 'swiper/swiper'
  end

end
