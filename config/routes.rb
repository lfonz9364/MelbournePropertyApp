Rails.application.routes.draw do

  get '/users', to: 'users#new'
  post '/users', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  root 'pages#home'
  namespace :api do
    resources :properties
  end

  resources :pages
end
