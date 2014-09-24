require 'test_helper'

feature 'Site owner creates an article' do
  scenario 'they see article created' do
    sign_in
    visit new_article_path
    fill_in 'Title', with: articles(:new).title
    fill_in 'Body', with: articles(:new).body
    click_on 'Create Article'
    page.text.must_include 'Article was successfully created.'
    page.has_css? '#author'
    page.text.must_include users(:andrew).email
  end
end
