Rails.application.routes.draw do
  devise_for :accounts, :controllers => {:registrations => "registrations"}
  resources :optional_modules
  get 'home/contactus'
  root 'home#index'
end
