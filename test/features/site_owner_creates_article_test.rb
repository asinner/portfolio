require 'test_helper'

feature 'Site owner creates an article' do
  scenario 'they see article created' do
    visit new_article_path
    fill_in 'Title', with: 'My Second Post'
    fill_in 'Body', with: 'Lorem ipsum dolor...'
    click_on 'Create Article'
    page.text.must_include 'Article was successfully created.'
  end
end