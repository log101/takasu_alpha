Rails.application.routes.draw do
  get 'home/index'
  get 'sessions/new', to: 'sessions#new', as: 'new_session'
  get 'sessions/create'
  get 'sessions/destroy'

  resources :users

  root 'home#index'
end
