require "application_system_test_case"
require "database_cleaner"
require 'minitest/hooks'

class RestaurantsTest < ApplicationSystemTestCase

  def setup
    signup
  end

  def teardown
    signout
  end

  test "listing a new restaurant" do
    visit restaurants_path
    click_on "Add restaurant"
    fill_in "name", with: "Cafe Boomstyle"
    fill_in "description", with: "mmm mmmm"
    click_on "Save Restaurant"
    assert_text "Name: Cafe Boomstyle"
  end

  test "editing restaurants details" do
    visit restaurants_path
    click_on "Add restaurant"
    fill_in "name", with: "Cafe Boomstyle"
    fill_in "description", with: "mmm mmmm"
    click_on "Save Restaurant"
    click_on "Edit"
    fill_in "name", with: "Cafe face"
    fill_in "description", with: "oooo yeah"
    click_on "Update Restaurant"
    assert_text "Name: Cafe face"
    assert_text "Description: oooo yeah"
  end

  test "deleting restaurant details" do
    visit restaurants_path
    click_on "Add restaurant"
    fill_in "name", with: "This should be deleted"
    fill_in "description", with: "Nothing useful"
    click_on "Save Restaurant"
    click_on "Back"
    click_on "Delete"
    page.accept_alert
    assert_no_text "This should be deleted"
  end

  test "users can sign-up" do
    assert_text "Welcome! You have signed up successfully."
  end

  test "users can login" do
    click_on "Logout"
    login
    assert_text "Signed in successfully."
  end
end
