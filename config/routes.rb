Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :products, only: [:show, :new, :destroy, :create, :update, :index, :edit] 
    resources :pictures, :image_url
    resources :charges
    devise_for :users
    root 'home#page'
    get "/products", to: "products#index"
    post "/products", to: "products#create", :defaults => { :format => 'json' }
    get "/products/new", to: "products#new", :defaults => { :format => 'json' }
    get "/products/:id/edit", to: "products#edit", :defaults => { :format => 'json' }
    put "/products/:id", to: "products#update"
    get "/products/:id", to: "products#show"
    delete "/products/:id", to: "products#destroy"
    get "/charges/new", to: "charges#new"
    post "/charges", to: "charges#create"

end
