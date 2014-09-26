require 'test_helper'

feature 'As a site visitor I want to only see published articles' do
  scenario 'see published articles on blog' do
    visit articles_path
    page.text.wont_include 'Status: Unpublished'
  end
end
