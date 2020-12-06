Rails.application.routes.draw do
  devise_for :accounts, :controllers => {:registrations => "registrations"}
  resources :optional_modules
  #get 'home/index'
  #get 'devise/registrations#new' => "students#new", :as => :account_root
  get 'home/contactus'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
