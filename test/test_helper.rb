Rails.env = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'coveralls'
Coveralls.wear!

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
require 'minitest/rails/capybara'
require 'capybara/poltergeist'

# Uncomment for awesome colorful output
# require "minitest/pride"

module ActiveSupport
  class TestCase
    ActiveRecord::Migration.check_pending!

    # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
    #
    # Note: You'll currently still have to declare fixtures explicitly in integration tests
    # -- they do not yet inherit this setting
    fixtures :all

    # Add more helper methods to be used by all tests here...
    def sign_in
      visit new_user_session_path
      fill_in 'Email', with: 'andrew@example.com'
      fill_in 'Password', with: '12345678'
      click_on 'Log in'
    end
  end
end
