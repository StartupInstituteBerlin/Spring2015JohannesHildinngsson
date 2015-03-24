class ReservationsController < ApplicationController

  def index
    @userid = current_user.id
    @restaurant = current_user.restaurants.all.pluck(:id)
    puts @restaurant 
    @reservation = Reservation.find(@restaurant.to_a)
    
    #@reservation = Reservation.join(:restaurant :user).where(:restaurants
    
#    @reservation = Reservation.joins(restaurant: :user).where(restaurants: { user_id:  current_user.id })
  end
  
  def new
    @reservation = Reservation.new(restaurant_id: params[:restaurant_id])
 
  end
  
  def create
    @reservation = Reservation.new(reservation_params)
    puts @reservation
     if @reservation.save
        ReservationsMailer.send_reservation_confirmation(@reservation).deliver_now
        redirect_to reservations_path, :notice => "Restaurant was saved!"
     else
        render "new"
      end
  end
  
  
  private
    def reservation_params
      params.require(:reservation).permit(:lastname, :email, :date,:restaurant_id)
    end

end
