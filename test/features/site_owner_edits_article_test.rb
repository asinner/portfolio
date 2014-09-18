require 'test_helper'

feature 'Site owner edits article' do
  scenario 'they see an update message' do
    visit article_path(articles(:one))
    click_on 'Edit'
    fill_in "Title", with: 'Hello, Updated World!'
    fill_in "Body", with: 'Updated crap...'
    click_on 'Update Article'
    page.text.must_include 'Article was successfully updated'
    page.text.must_include 'Updated crap...'
  end
end
