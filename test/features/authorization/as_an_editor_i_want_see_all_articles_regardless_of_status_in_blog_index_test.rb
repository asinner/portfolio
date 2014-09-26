require 'test_helper'

feature 'As an editor I want to see all articles regardless of status' do
  scenario 'see all blogs' do
    sign_in(:editor)
    visit articles_path
    page.text.must_include articles(:one).title
    page.text.must_include articles(:new).title
    page.text.must_include articles(:three).title
    page.text.must_include articles(:four).title
  end
end
