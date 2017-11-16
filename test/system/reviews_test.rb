require "application_system_test_case"
require 'database_cleaner'

class ReviewsTest < ApplicationSystemTestCase

  def setup
    signup
  end

  def teardown
    signout
  end

  test "emails are displayed for reviews left on others restaurants" do
    create_restaurant
    signout
    signup("chris@gmail.com", "123456")
    click_on "Show"
    click_on "See reviews"
    click_on "New review"
    fill_in "rating", with: "5"
    fill_in "description", with: "good food"
    click_on "Save Review"
    assert_text "by chris@gmail.com"
  end

  test "cannot review your own restaurant" do
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
end
