Rails.application.routes.draw do
  #this is from template
  # get 'home/top_films'
  get 'welcome/index'

  resources :articles
  # for searching 
  post "top_films" => 'home#top_films'

  #we change this to cource
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end