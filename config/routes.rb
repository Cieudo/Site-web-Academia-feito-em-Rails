Rails.application.routes.draw do
  resources :clientes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root              'static_pages#home'
  resource :peers
  get '/users', to: "controllers#index"

  get 'planos'   =>  'static_pages#planos'
  get 'home'     =>  'static_pages#home'
  get 'about'    =>  'static_pages#about'

  resource :aulas
  get '/aulas', to: "aulas#index"
  get '/aulas/new', to: "aulas#new"
  #post '/aulas/create', to "aulas#create"

end
