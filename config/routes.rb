Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:destroy]
  devise_for :users
  root 'homepage#index'

  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  get 'search_friend', to: 'friends#search'
  get 'my_friends', to: 'users#my_friends'
end
