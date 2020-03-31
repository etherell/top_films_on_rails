Rails.application.routes.draw do
  #this is from template when you create welcome controllers 
  get 'welcome/index'

  # get 'home/top_films'

  # resource method can be used to declare a standart REST resource
  # you need to add the article resource to the config/routes.rb so the file will look as follows
  
  resources :articles

  # for searching 
  post "searching" => 'home#searching'

  #we change this from -> root 'home#index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
