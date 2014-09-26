require 'test_helper'

feature 'As an author I want to create articles' do
  scenario 'create' do
    sign_in(:author)
    visit articles_path
    page.must_have_link 'New Article'
    click_link 'New Article'
    page.must_have_field 'Title'
    page.must_have_field 'Body'
    fill_in 'Title', with: 'Hello, World'
    fill_in 'Body', with: 'Example text'
    click_on 'Create Article'
    page.text.must_include 'Article was successfully created'
    page.text.must_include 'Hello, World'
  end
end
