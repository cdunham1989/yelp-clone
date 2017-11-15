require "application_system_test_case"

class ReviewsTest < ApplicationSystemTestCase
  # test "visiting the reviews index page" do
  #   visit reviews_url
  #   assert_selector "h1", text: "Here are all the reviews:"
  # end

  test "listing a new review for a particular restaurant" do
    visit restaurants_path

    click_on "Add restaurant"

    fill_in "name", with: "Cafe Boomstyle"
    fill_in "description", with: "mmm mmmm"

    click_on "Save Restaurant"

    click_on "See reviews"

    click_on "Add review"

    fill_in "rating", with: "5"
    fill_in "description", with: "good food"
    click_on "Save Review"
    assert_text "Rating: 5"
  end
end
