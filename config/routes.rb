Rails.application.routes.draw do
  root "home#index"

  resources :experiences, only: [:edit, :new, :update, :create, :destroy]
  resources :settings
end
