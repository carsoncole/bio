Rails.application.routes.draw do
  resources :settings
  root "home#index"

  resources :experiences

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
