Rails.application.routes.draw do
  devise_for :accounts
  resources :optional_modules
  resources :students
  #get 'home/index'
  get 'home/contactus'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
