require "application_system_test_case"
require 'database_cleaner'

class ReviewsTest < ApplicationSystemTestCase
  test "emails are displayed for reviews" do
    visit restaurants_path
    click_on "Register"
    fill_in "Email", with: "chris@gmail.com"
    fill_in "Password", with: "987654"
    fill_in "Password confirmation", with: "987654"
    click_on "Sign up"
    visit restaurants_path
    click_on "Add restaurant"
    fill_in "name", with: "Cafe Boomstyle"
    fill_in "description", with: "mmm mmmm"
    click_on "Save Restaurant"
    click_on "See reviews"
    click_on "New review"
    fill_in "rating", with: "5"
    fill_in "description", with: "good food"
    click_on "Save Review"
    assert_text "by chris@gmail.com"
  end

  test "listing a new review for a particular restaurant" do
    signup
    visit restaurants_path
    click_on "Add restaurant"
    fill_in "name", with: "Cafe Boomstyle"
    fill_in "description", with: "mmm mmmm"
    click_on "Save Restaurant"
    click_on "See reviews"
    click_on "New review"
    fill_in "rating", with: "5"
    fill_in "description", with: "good food"
    click_on "Save Review"
    assert_text "good food"
  end

  test "reviews page shows name of resturant" do
    visit restaurants_path
    click_on "Add restaurant"
    fill_in "name", with: "Cafe Boomstyle"
    fill_in "description", with: "mmm mmmm"
    click_on "Save Restaurant"
    click_on "See reviews"
    assert_text "Here are all the reviews for Cafe Boomstyle:"
  end
end

def signup
  visit restaurants_path
  click_on "Register"
  fill_in "Email", with: "test@test.test"
  fill_in "Password", with: "testtest"
  fill_in "Password confirmation", with: "testtest"
  click_on "Sign up"
end
