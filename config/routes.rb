Rails.application.routes.draw do
  root "home#index"

  get '/login' => 'experiences#new'
  get '/logout' => 'sessions#logout', as: 'logout'
  get '/resume' => 'resume#show', as: 'resume'

  resources :experiences, only: [:edit, :new, :update, :create, :destroy]
  resources :settings, only: [:edit, :update, :new, :create]
end
