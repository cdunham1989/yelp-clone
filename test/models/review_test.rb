require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "should not save review if no rating or description added" do
    review = Review.new
    assert_not review.save
  end

  test "should be able to save review with a rating only" do
    restaurant = Restaurant.new(name: "test name", description: "TGI's")
    restaurant.save
    review = Review.new(rating: "4")
    review.restaurant = restaurant
    assert review.save
  end

  test "should be able to save a review with a rating and a description" do
    restaurant = Restaurant.new(name: "test name", description: "TGI's")
    restaurant.save
    review = Review.new(rating: "4", description: "good food")
    review.restaurant = restaurant
    assert review.save
  end

  test "should not save a review with just a description" do
    review = Review.new(description: "good food")
    assert_not review.save
  end

  test "should not save review unless rating is between 1 and 5" do
    review = Review.new(rating: "7", description: "terrible")
    assert_not review.save
  end

  test "should return an average rating" do
    restaurant = Restaurant.new(name: "cafe burp", description: "airy")
    restaurant.save
    review = Review.new(rating: "3", description: "average")
    review.save

    assert reviews.index.average_rating.average_rating == 2
  end

end
