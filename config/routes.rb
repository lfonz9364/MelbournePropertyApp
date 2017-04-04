Rails.application.routes.draw do
  get '/login', to: 'sessions#login'
  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  root 'pages#home'
  namespace :api do
    resources :properties
  end

  resources :pages
end
