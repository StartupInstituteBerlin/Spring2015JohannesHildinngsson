Rails.application.routes.draw do
 
  devise_for :users
 #Restaurans controller
 root 'restaurants#index'
 resources :restaurants
end
