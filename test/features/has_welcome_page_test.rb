require 'test_helper'

describe 'My welcome page', :capybara do
  it 'exists' do
    visit root_path
    page.text.must_include 'Welcome to my portfolio'
  end
end