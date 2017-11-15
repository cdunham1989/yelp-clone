require "application_system_test_case"

class ReviewsTest < ApplicationSystemTestCase
  test "visiting the reviews index page" do
    visit reviews_url
    assert_selector "h1", text: "Here are all the reviews:"
  end

  test "listing a new review" do
    visit reviews_path
    click_on "New review"
    fill_in "rating", with: "5"
    fill_in "description", with: "good food"
    click_on "Save Review"
    assert_text "Rating: 5"
  end
end
