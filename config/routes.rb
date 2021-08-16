Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :products, only: [:show, :new, :destroy, :create, :update, :index, :edit] 
    resources :pictures, :image_url
    devise_for :users
    root 'home#page'
    get "/products", to: "products#index"
    post "/products", to: "products#create"
    get "/products/new", to: "products#new"
    get "/products/:id/edit", to: "products#edit"
    put "/products/:id", to: "products#update"
    get "/products/:id", to: "products#show"
    delete "/products/:id", to: "products#destroy"
end
