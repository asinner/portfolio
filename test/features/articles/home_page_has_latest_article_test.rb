require 'test_helper'

feature 'Home page has latest article post' do
  scenario 'they see the latest post' do
    visit root_path
    page.text.must_include articles(:one).title
  end
end
