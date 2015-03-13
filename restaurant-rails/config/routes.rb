Rails.application.routes.draw do
   devise_for :users

 
 #Restaurans controller
 root 'restaurants#index'
 resources :restaurants
 resources :reservations , only: [:index, :show, :create, :new]  
 get  '/restaurants/:restaurant_id/reservations/new' => 'reservations#new', as:  :new_reservation_for_restaurant
end
