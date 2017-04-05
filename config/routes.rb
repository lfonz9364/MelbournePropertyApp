Rails.application.routes.draw do

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  post '/users', to: 'users#destroy'

  get '/login', to: 'sessions#login'
  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  get '/api/properties/show/:id', to: 'api/properties#show'
  root 'pages#home'
  namespace :api do
    resources :properties
  end

  resources :pages
  get '/properties/test', to: 'properties#test'
end
