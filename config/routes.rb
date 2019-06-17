Rails.application.routes.draw do
  
  get "/home", to:"home#index"
  root  "home#index"
  
  devise_for :users
  resources :destinations do
       resources :plans
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 
  
end
