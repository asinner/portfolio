require 'test_helper'

feature 'As a site visitor I want to only see published articles' do
  scenario 'see published articles on blog' do
    visit articles_path
    page.text.must_include articles(:one).title
    page.text.must_include articles(:two).title
    page.text.wont_include articles(:three).title
    page.text.must_include articles(:four).title
  end
end
