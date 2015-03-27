class RestaurantsController < ApplicationController
before_action :authenticate_user!
  def index
    @restaurant = current_user.restaurants.all
  end

  def show
   @restaurant = Restaurant.find(params[:id])
   @has_rating = Rating.where(restaurant_id: @restaurant.id, user_id: current_user.id).exists?
   @your_rating = Rating.where(restaurant_id: @restaurant.id, user_id: current_user.id).pluck(:rating).first
   
   puts @has_rating.to_s + "has rating"
  end

  def rate_it
    puts "RATE IT CONTROLLER"
    Rating.create(restaurant_id: params[:restaurant_id], user_id: current_user.id, rating: params[:value])    
    flash[:success] = "Thank you for your rating!"
    render text: "ok"
  end
  
  
  def unrate_it
    puts "UNNNNRATE IT CONTROLLER"
    Rating.where(user_id: current_user.id, restaurant_id: params[:restaurant_id]).destroy_all

    
    flash[:success] = "Rating removed!"

    redirect_to restaurants_path	
  end
  
  
  
  def new
    @restaurant = Restaurant.new
  end

  def create
   
    @restaurant = current_user.restaurants.new(restaurant_params)
     if @restaurant.save
        redirect_to restaurants_path, :notice => "Restaurant was saved!"
     else
        render "new"
      end

  end

  def edit
    @restaurant = current_user.restaurants.find(params[:id])
   
  end

  def update
   @restaurant = current_user.restaurants.new(restaurant_params)
   
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end

  end


  def destroy
    @restaurant = current_user.restaurants.new(restaurant_params)
    redirect_to root_path
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address, :phonenumber)
    end


end
