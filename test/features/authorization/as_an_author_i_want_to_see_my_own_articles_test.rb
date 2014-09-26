require 'test_helper'

feature 'As an author I want to see my own articles' do
  scenario 'see my articles' do
    sign_in(:author)
    visit articles_path
    page.text.must_include articles(:four).title
    page.text.wont_include articles(:one).title
    page.text.wont_include articles(:new).title
    page.text.wont_include articles(:three).title
  end
end
