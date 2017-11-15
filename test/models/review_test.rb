require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "should not save review if no rating or description added" do
    review = Review.new
    assert_not review.save
  end

  test "should be able to save review with a rating only" do
    review = Review.new(rating: "4")
    assert review.save
  end

  test "should be able to save a review with a rating and a description" do
    review = Review.new(rating: "4", description: "good food")
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
end
