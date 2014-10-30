require 'test_helper'

feature 'As a site visitor I should not be able to access create, update articles' do
  scenario 'create' do
    visit new_admin_article_path
    page.text.must_include 'Unauthorized'
  end

  scenario 'update' do
    visit edit_admin_article_path(articles(:one))
    page.text.must_include 'Unauthorized'
  end
end
