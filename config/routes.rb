Rails.application.routes.draw do
  resources :friendships
  resources :invites
  resources :events
  resources :users
  get '/login', to: 'sessions#new_login', as: 'login'
  get '/logout', to: 'sessions#logout', as: 'logout'
  post '/login', to: 'sessions#login_auth', as: 'login_auth'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
