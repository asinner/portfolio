require 'test_helper'

feature 'As a site visitor I should not be able to create, update, or delete articles' do
  scenario 'create' do
    visit articles_path
    page.wont_have_link 'New Article'
    visit new_article_path
    page.text.must_include 'You need to sign in or sign up before continuing'
  end

  scenario 'update' do
    visit article_path(articles(:one))
    page.wont_have_link 'Edit'
    visit edit_article_path(articles(:one))
    page.text.must_include 'You need to sign in or sign up before continuing'
  end

  scenario 'delete' do
    visit article_path(articles(:one))
    page.wont_have_link 'Delete'
  end
end
