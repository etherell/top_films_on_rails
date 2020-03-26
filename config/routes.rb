Rails.application.routes.draw do
  #this is from template
  get 'home/index'
  get 'welcome/index'

  resources :articles
  
  #we change this to cource
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
