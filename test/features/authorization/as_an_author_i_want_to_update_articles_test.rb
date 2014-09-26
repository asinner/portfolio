require 'test_helper'

feature 'As an author I want to update articles' do
  scenario 'update' do
    sign_in(:author)
    visit edit_article_path(articles(:four))
    fill_in 'Title', with: 'Newly updated title'
    click_on 'Update Article'
    page.text.must_include 'Article was successfully updated'
    page.text.must_include 'Newly updated title'
  end
end
