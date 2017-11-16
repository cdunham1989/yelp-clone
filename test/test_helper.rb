require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'database_cleaner'
require 'minitest/hooks/default'
require 'pry'

DatabaseCleaner.strategy = :transaction
class Minitest::Spec
  around do |tests|
    DatabaseCleaner.cleaning(&tests)
  end
end

def signup(email="test@test.test", password="testtest")
  visit restaurants_path
  click_on "Register"
  fill_in "Email", with: email
  fill_in "Password", with: password
  fill_in "Password confirmation", with: password
  click_on "Sign up"
end

def signout
  click_on "Logout"
end

def login(email="test@test.test", password="testtest")
  click_on "Login"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_on "Log in"
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
