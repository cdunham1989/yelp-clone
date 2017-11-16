require 'application_system_test_case'

class AverageRatingsTest < ApplicationSystemTestCase
  test 'should not return an average rating if no user has written' do
    visit restaurants_path

    click_on 'Add restaurant'

    fill_in 'name', with: 'Cafe Boomstyle'
    fill_in 'description', with: 'mmm mmmm'

    click_on 'Save Restaurant'

    click_on 'See reviews'

    assert_text 'Average rating for this restaurant: No ratings as yet'
  end

  test 'should return an average rating' do
    visit restaurants_path
    click_on 'Register'
    fill_in 'Email', with: 'test@test.test'
    fill_in 'Password', with: 'testtest'
    fill_in 'Password confirmation', with: 'testtest'
    click_on 'Sign up'

    visit restaurants_path

    click_on 'Add restaurant'

    fill_in 'name', with: 'Cafe Boomstyle'
    fill_in 'description', with: 'mmm mmmm'

    click_on 'Save Restaurant'

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
