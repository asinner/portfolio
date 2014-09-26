require 'test_helper'

feature 'User visits live website for portfolio' do
  before do
    # So Capybara can visit external URLS
    Capybara.current_driver = :poltergeist
  end

  scenario 'they see the home page' do
    visit 'http://www.andrewsinner.com'
    page.text.must_include "I'm a Ruby on Rails developer"
  end
end
