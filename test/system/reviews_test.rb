require "application_system_test_case"

class ReviewsTest < ApplicationSystemTestCase
  test "visiting the reviews index page" do
    visit reviews_url
    assert_selector "h1", text: "Here are all the reviews:"
  end
end
