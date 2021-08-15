Rails.application.routes.draw do
  resources :products, only: [:show, :new, :destroy, :create, :update, :index, :edit] 
  resources :pictures, :image_url
  devise_for :users
  root 'home#page'
  # get 'navbar/shop' => :get, to 'products#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
