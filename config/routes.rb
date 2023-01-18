Rails.application.routes.draw do
  
  root              'static_pages#home'
  resource :peers
  get 'planos'   =>  'static_pages#planos'
  get 'home'    =>  'static_pages#home'
  get 'about'    =>  'static_pages#about'
  get 'signup'  =>  'users#new'
  get '/aula', to: "aula#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
