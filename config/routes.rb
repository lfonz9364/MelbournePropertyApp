Rails.application.routes.draw do

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  post '/users', to: 'users#destroy'

  get '/users/edit', to: 'users#update'
  post '/users', to: 'users#show'

  get '/login', to: 'sessions#login'
  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  get '/api/properties/show/:id', to: 'api/properties#show'


  post '/favourites/new', to: 'favourites#create'
<<<<<<< HEAD
  get '/favourites', to: 'favourites#show'
=======
  get '/favourites', to: 'favourites#save'
  post '/favourites/edit', to: 'favourites#edit'
>>>>>>> master

  root 'pages#home'
  namespace :api do
    resources :properties
  end
  resources :pages
  get '/properties/test', to: 'properties#test'

end
