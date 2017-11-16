class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(restaurant_id: params[:restaurant_id])
    average_rating
    @restaurant = find_restaurant
  end

def create
  @review = Review.new(review_params)
  @restaurant = find_restaurant
  @review.restaurant = @restaurant
  @review.user = current_user
  @review.save
  redirect_to restaurant_reviews_path(@restaurant)
end

def show
  @restaurant = find_restaurant
  @review = Review.find(params[:id])
end



private
  def review_params
    params.require(:review) .permit(:rating, :description)
  end


  def average_rating
    total_rating = 0
    @reviews.each do |review|
      total_rating += review.rating
    end

    if @reviews.empty?
      @average_rating = 'No ratings as yet'
    else
      @average_rating = (total_rating/@reviews.length)
    end
  end


  def find_restaurant
    return Restaurant.find(params[:restaurant_id])
  end
  
end
