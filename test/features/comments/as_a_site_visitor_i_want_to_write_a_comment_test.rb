require 'test_helper'

feature 'As a site visitor I want to leave a comment' do
  scenario 'leaves a comment' do
    visit article_path(articles(:one))
    fill_in 'Author', with: 'Troll'
    fill_in 'Email', with: 'tro@ll.com'
    fill_in 'Content', with: 'Never gonna give you up'
    click_button 'Leave comment'
    page.text.must_include 'Troll'
  end
end
