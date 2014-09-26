require 'test_helper'

feature 'As an editor I want to publish articles' do
  scenario 'update' do
    sign_in(:editor)
    visit articles_path
    click_link articles(:one).title
    page.must_have_link 'Edit'
    click_link 'Edit'
    page.must_have_field 'Published'
    check 'Published'
    click_on 'Update Article'
    page.text.must_include 'Article was successfully updated'
    page.text.must_include 'Status: Published'
  end
end
