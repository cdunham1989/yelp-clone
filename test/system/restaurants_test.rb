require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit restaurants_url
  #
  #   assert_selector "h1", text: "Restaurants"
  # end

  test "listing a new restaurant" do
    visit restaurants_path

    click_on "Add restaurant"

    fill_in "name", with: "Cafe Boomstyle"
    fill_in "description", with: "mmm mmmm"

    click_on "Save Restaurant"

    assert_text "Name: Cafe Boomstyle"
  end

end
