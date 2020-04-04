Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  get 'authorized', to: 'sessions#page_requires_login'

  # get 'session/new'
  # get 'session/create'
  # get 'session/login'
  # get 'session/welcome'
  # get 'users/new'
  # get 'users/create'
  #this is from template when you create welcome controllers 
  #get 'welcome/index'

  get 'home/index'

  # resource method can be used to declare a standart REST resource
  # you need to add the article resource to the config/routes.rb so the file will look as follows
  
  resources :articles do
    # this create comments as a nested resource with articles
    resources :comments
  end

  # for searching 
  post "searching" => 'home#searching'

  #we change this from -> root 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
