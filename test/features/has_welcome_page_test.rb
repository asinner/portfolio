require 'test_helper'

describe 'My welcome page', :capybara do
  it 'has my name somewhere' do
    visit root_path
    page.text.must_include "Andrew Sinner"
  end
end
