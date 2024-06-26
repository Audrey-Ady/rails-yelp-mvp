class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :rating, :content)
  end
end
