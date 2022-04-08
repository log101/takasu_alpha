Rails.application.routes.draw do
  resources :mangas
  get 'home/index'
  get 'sessions/new', to: 'sessions#new', as: 'new_session'
  post 'sessions/create', to: 'sessions#create', as: 'create_session'
  delete 'sessions/destroy', to: 'sessions#destroy', as: 'destroy_session'

  resources :users

  root 'home#index'
end
