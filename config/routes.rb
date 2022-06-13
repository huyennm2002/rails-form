Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "users#index"
  get "/users", to: "users#create"

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, :only => [:new, :create]
end
