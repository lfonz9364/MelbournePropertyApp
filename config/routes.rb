Rails.application.routes.draw do
  root 'pages#home'
  namespace :api do
    resources :properties
  end

  resources :pages
end
