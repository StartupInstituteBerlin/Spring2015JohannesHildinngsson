Rails.application.routes.draw do
 
 #Restaurans controller
 root 'restaurants#index'
 resources :restaurants
end
