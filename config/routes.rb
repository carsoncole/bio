Rails.application.routes.draw do
  root "home#index"

  resources :experiences
  resources :settings
end
