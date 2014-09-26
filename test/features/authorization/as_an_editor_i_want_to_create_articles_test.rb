require 'test_helper'

feature 'As an editor I want to create articles' do
  scenario 'create' do
    sign_in(:editor)
    visit new_article_path
    fill_in 'Title', with: 'New title'
    fill_in 'Body', with: 'New Body'
    check 'Published'
    click_on 'Create Article'
    page.text.must_include 'New title'
    page.text.must_include 'New Body'
    page.text.must_include 'Status: Published'
  end
end
