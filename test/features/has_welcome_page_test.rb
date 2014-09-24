require 'test_helper'

describe 'My welcome page', :capybara do
  it 'exists' do
    visit root_path
    page.text.must_include 'Andrew Sinner'
  end
end
