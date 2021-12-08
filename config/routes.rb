Rails.application.routes.draw do
  root "home#index"

  get '/login' => 'experiences#new'

  resources :experiences, only: [:edit, :new, :update, :create, :destroy]
  resources :settings
end
