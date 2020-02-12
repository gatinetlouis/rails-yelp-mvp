class RestaurantsController < ApplicationController
  def index
    category = params[:category_select]
    if category.blank?
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.where(category: category)
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    if @restaurant.valid?
      @restaurant.save!
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
