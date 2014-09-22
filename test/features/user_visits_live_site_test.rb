require 'test_helper'

feature 'User visits live website for portfolio' do
  scenario 'they see the home page' do
    visit 'http://www.andrewsinner.com'
    page.text.must_include "I'm a Ruby on Rails developer"
  end
end
