require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "should not save restaurant listing without neither name nor description" do
    restaurant = Restaurant.new
    assert_not restaurant.save
  end
  test "should be able to save restaurant listing with a name" do
    restaurant = Restaurant.new(name: "test name", description: "TGI's")
    assert restaurant.save
  end
  test "should not save restaurant listing without a description" do
    restaurant = Restaurant.new(name: "TGI's")
    assert_not restaurant.save
  end
  test "should not save restaurant listing without a name" do
    restaurant = Restaurant.new(description: "bowfing")
    assert_not restaurant.save
  end
end
