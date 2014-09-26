require 'test_helper'

feature 'As an editor I want to update articles' do
  scenario 'update' do
    sign_in(:editor)
    visit edit_article_path(articles(:three))
    fill_in 'Title', with: 'New Title'
    fill_in 'Body', with: 'New Body'
    check 'Publish'
    click_on 'Update Article'
    page.text.must_include 'Article was successfully updated'
    page.text.must_include 'New Title'
  end
end
