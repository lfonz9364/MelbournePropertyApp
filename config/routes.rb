Rails.application.routes.draw do

  get '/sessions/login', to: 'session#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'session#destroy'

  
  root 'pages#home'
  namespace :api do
    resources :properties
  end

  resources :pages
end
