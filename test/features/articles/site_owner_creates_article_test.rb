require 'test_helper'

feature 'Site owner creates an article' do
  scenario 'they see article created' do
    visit new_article_path
    fill_in 'Title', with: articles(:new).title
    fill_in 'Body', with: articles(:new).body
    click_on 'Create Article'
    page.text.must_include 'Article was successfully created.'
  end
end