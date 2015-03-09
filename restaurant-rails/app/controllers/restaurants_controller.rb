class RestaurantsController < ApplicationController

def index
  @restaurant = Restaurant.all
end

def show

 @restaurant = Restaurant.find(params[:id])
end


def new
  @restaurant = Restaurant.new
end

def create
  @restaurant = Restaurant.new(restaurant_params)

  @restaurant.save
  redirect_to root_path
end

def edit
  @restaurant = Restaurant.find(params[:id])
 
end

def update
 @restaurant = Restaurant.find(params[:id])
 
  if @restaurant.update(restaurant_params)
    redirect_to @restaurant
  else
    render 'edit'
  end

end


def destroy
  @restaurant = Restaurant.destroy(params[:id])
  redirect_to root_path
end

private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phonenumber)
  end


end
