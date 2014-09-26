require 'test_helper'

feature 'As an editor I want to delete articles' do
  scenario 'delete article' do
    sign_in(:editor)
    visit article_path(articles(:four))
    click_on 'Delete'
    page.text.must_include 'Article was successfully destroy'
    page.text.wont_include articles(:four).title
  end
end
