Rails.application.routes.draw do

  get 'home/index'
  get 'sessions/new', to: 'sessions#new', as: 'new_session'
  post 'sessions/create', to: 'sessions#create', as: 'create_session'
  delete 'sessions/destroy', to: 'sessions#destroy', as: 'destroy_session'

  resources :users do
    resources :mangas, shallow: true
  end

  root 'home#index'
end
