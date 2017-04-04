Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  root 'pages#home'
  namespace :api do
    resources :properties
  end

  resources :pages
  get '/properties/test', to: 'properties#test'
end
