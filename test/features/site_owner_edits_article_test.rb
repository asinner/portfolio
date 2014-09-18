require 'test_helper'

feature 'Site owner edits article' do
  scenario 'they see an update message' do
    visit article_path(articles(:one))
    click_on :edit
    fill_in :title, with: 'Hello, Updated World!'
    fill_in :body, with: 'Updated crap...'
    click_on 'Update Article'
    page.text.must_include 'Article updated'
    page.text.must_include 'Updated crap...'
  end
end
