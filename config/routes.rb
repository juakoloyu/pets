Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :animals
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'swiper/home'
  get 'swiper/my'
  # Defines the root path route ("/")
  root "home#index"
end
