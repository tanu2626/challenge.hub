Rails.application.routes.draw do

  get 'mycart/index'

  resources :food_items
  get 'menu/index'


 root 'home#index'

 get 'contact_us' => 'home#contact_us'
 get 'menu' => 'menu#index'
 get 'mycart' => 'mycart#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
