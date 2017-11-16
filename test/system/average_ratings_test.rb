require 'application_system_test_case'

class AverageRatingsTest < ApplicationSystemTestCase

  def setup
    signup
  end

  def teardown
    signout
  end

  test 'should not return an average rating if no user has written' do
    create_restaurant
    click_on 'See reviews'
    assert_text 'Average rating for this restaurant: No ratings as yet'
  end

  test 'should return an average rating' do
    create_restaurant
    signout
    signup("chris@gmail.com", "123456")
    click_on "Show"
    click_on 'See reviews'
    click_on 'New review'
    fill_in 'rating', with: '5'
    fill_in 'description', with: 'good food'
    click_on 'Save Review'
    click_on 'New review'
    fill_in 'rating', with: '3'
    fill_in 'description', with: 'good food'
    click_on 'Save Review'
    assert_text 'Average rating for this restaurant: 4'
  end
end
