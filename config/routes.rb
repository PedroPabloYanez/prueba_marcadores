Rails.application.routes.draw do
  resources :categories
  resources :types
  resources :markers

  root to: 'markers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
