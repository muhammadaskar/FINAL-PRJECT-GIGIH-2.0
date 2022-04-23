Rails.application.routes.draw do
  resources :orders
  resources :customer_orders
  resources :items
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
