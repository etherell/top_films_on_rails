Rails.application.routes.draw do
  get 'example/test'
  #this is from template
  # get 'home/top_films'
  get 'welcome/index'

  resources :articles
  # for searching 
  post "searching" => 'home#searching'
  
  # when you click to top_rated movie  
  get 'articles/click'

  #we change this to cource
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
