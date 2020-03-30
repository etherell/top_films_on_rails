Rails.application.routes.draw do
  #this is from template
  # get 'home/top_films'
  get 'welcome/index'

  get 'home/most_rated'
  
  resources :articles

  # for searching 
  post "searching" => 'home#searching'

  #we change this to cource
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
