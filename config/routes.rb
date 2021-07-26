Rails.application.routes.draw do
  get 'home/index'
  get 'search/create'
  resources :categories
  resources :types
  resources :markers

  get "/api", to: "categories#api"
  get "search/create"

  root 'markers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
