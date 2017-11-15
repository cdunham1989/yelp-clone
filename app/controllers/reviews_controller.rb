class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

def create
    @review = Review.new(review_params)
    p params
    restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = restaurant
    @review.save
    p @review.save
    redirect_to @review
  end

  def show
    @review = Review.find(params[:id])
  end

  private
    def review_params
      params.require(:review) .permit(:rating, :description)
    end
end
