Rails.application.routes.draw do
  resources :trade_items
  resources :trades
  get 'search', to: 'search#index', as: 'search_index'
  get 'search/:query', to: 'search#search', as: 'search_query'

  get 'home/index'

  get 'sessions/new', to: 'sessions#new', as: 'new_session'
  post 'sessions/create', to: 'sessions#create', as: 'create_session'
  delete 'sessions/destroy', to: 'sessions#destroy', as: 'destroy_session'

  post 'trades/:id/confirm', to: 'trades#confirm_trade', as: 'confirm_trade'

  resources :users do
    resources :mangas, shallow: true
    resources :trades, shallow: true
  end

  root 'home#index'
end
