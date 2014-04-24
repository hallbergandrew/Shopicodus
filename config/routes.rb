Rails.application.routes.draw do
  root to: 'products#index'
  resources :products
  resources :users
  resources :sessions
  match('/login', {:via => :get, :to => "sessions#new"})
  match('/logout', {:via => :get, :to => "sessions#destroy"})

end
