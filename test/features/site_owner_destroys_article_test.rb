require 'test_helper'

feature 'Site owner destroys an article' do
  scenario 'they see article destroyed message' do
    visit article_path(articles(:one))
    click_on 'Delete'
    page.text.must_include 'Article destroyed'
  end
end
