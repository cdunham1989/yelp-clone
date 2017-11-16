require "application_system_test_case"
require 'database_cleaner'

class ReviewsTest < ApplicationSystemTestCase

  def setup
    signup
  end

  def teardown
    signout
  end

  # test "emails are displayed for reviews" do
  #   visit restaurants_path
  #   click_on "Add restaurant"
  #   fill_in "name", with: "Cafe Boomstyle"
  #   fill_in "description", with: "mmm mmmm"
  #   click_on "Save Restaurant"
  #   click_on "See reviews"
  #   click_on "New review"
  #   fill_in "rating", with: "5"
  #   fill_in "description", with: "good food"
  #   click_on "Save Review"
  #   assert_text "by test@test.test"
  # end

  test "listing a new review for a particular restaurant" do
    create_restaurant
    click_on "See reviews"
    click_on "New review"
    fill_in "rating", with: "5"
    fill_in "description", with: "good food"
    click_on "Save Review"
    assert_text "Cannot review your own restaurant"
  end

  test "reviews page shows name of resturant" do
    create_restaurant
    click_on "See reviews"
    assert_text "Here are all the reviews for Cafe Boomstyle:"
  end

  # test "cannot review your own restaurant" do
  #   create_restaurant
  #
  # end
end

def create_restaurant(name="Cafe Boomstyle", description="mmm mmmm")
  visit restaurants_path
  click_on "Add restaurant"
  fill_in "name", with: name
  fill_in "description", with: description
  click_on "Save Restaurant"
end
