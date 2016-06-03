Rails.application.routes.draw do
  resources :comments
  resources :articles do
  resources :categories
  end
  devise_for :users
  root 'home#index'
  get 'home/about'

end
