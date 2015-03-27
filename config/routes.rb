Rails.application.routes.draw do
   devise_for :users

 
 #Restaurans controller
 root 'restaurants#index'
 resources :restaurants
 resources :reservations , only: [:index, :show, :create, :new]  
 get  '/restaurants/:restaurant_id/reservations/new' => 'reservations#new', as:  :new_reservation_for_restaurant
 get '/restaurants/:restaurant_id/rate_it/:value' => 'restaurants#rate_it', as: :rate_restaurant
 get '/restaurants/:restaurant_id/unrate_it/:value' => 'restaurants#unrate_it', as: :unrate_restaurant
end
