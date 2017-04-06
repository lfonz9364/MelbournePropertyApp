Rails.application.routes.draw do

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  post '/users', to: 'users#destroy'
  get '/users/edit', to: 'users#update'

  get '/login', to: 'sessions#login'
  post '/session', to: 'sessions#create'
  delete '/session', to: 'sessions#destroy'

  get '/api/properties/show/:id', to: 'api/properties#show'

<<<<<<< HEAD
=======
  post '/favourites/new', to: 'favourites#create'
  get '/favourites', to: 'favourites#show'

>>>>>>> 34999ee7919b058ae71faecdfddd40a762ee73ca
  root 'pages#home'
  namespace :api do
    resources :properties
  end
  resources :pages
  get '/properties/test', to: 'properties#test'

end
