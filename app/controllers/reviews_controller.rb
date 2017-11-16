class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(restaurant_id: params[:restaurant_id])
    average_rating
  end

def create
  @review = Review.new(review_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review.restaurant = @restaurant
  @review.save
  redirect_to restaurant_reviews_path(@restaurant)
end

def show
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

end
