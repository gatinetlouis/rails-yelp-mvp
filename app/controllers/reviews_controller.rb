class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.valid?
      @review.save!
      redirect_to restaurant_reviews_path(@restaurant)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating, :name)
  end
end
