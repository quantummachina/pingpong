Rails.application.routes.draw do
  resources :games
  devise_for :users
  root to: "home#index"
  get '/history', to: 'games#index'
  get '/log',     to: 'games#new'
end
