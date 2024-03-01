Rails.application.routes.draw do
  resources :responses
  resources :statuses
  get 'home/index'

  # Defines the root path route ("/")
  root 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  resources :electors
  resources :lists
end
