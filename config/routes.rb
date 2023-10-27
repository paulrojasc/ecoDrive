Rails.application.routes.draw do
  resources :cars
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  # Vistas estaticas
  get '/home',    to: 'pages#home'
  get '/about',   to: 'pages#about'
  get '/terms',   to: 'pages#terms'
end
