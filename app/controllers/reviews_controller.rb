class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(restaurant_id: params[:restaurant_id])
  end

def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant = @restaurant
  @review.save
  redirect_to "/restaurants/#{@restaurant.id.to_s}/reviews"
end

def show
  @review = Review.find(params[:id])
end

private
  def review_params
    params.require(:review) .permit(:rating, :description)
  end
end
