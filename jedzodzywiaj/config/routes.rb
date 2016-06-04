Rails.application.routes.draw do
  resources :categories
  resources :articles do
  	resources :comments
  end
  resources :comments
  
  devise_for :users
  root 'home#index'
  get 'home/about'

end
