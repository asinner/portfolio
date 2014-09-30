require 'test_helper'

feature 'As a site visitor I want to write a comment test' do
  scenario 'signed in user leaves a valid comment' do
    sign_in(:author)
    visit article_path(articles(:one))
    fill_in 'Author', with: 'Troll'
    fill_in 'Email', with: 'tro@ll.com'
    fill_in 'Url', with: 'www.trolol.com'
    fill_in 'Content', with: 'Never gonna give you up'
    click_button 'Leave comment'
    page.text.must_include 'Comment was successfully created'
  end

  scenario 'signed in user leaves an invalid comment' do
    sign_in(:author)
    visit article_path(articles(:one))
    fill_in 'Author', with: 'Troll'
    click_button 'Leave comment'
    page.text.wont_include 'Comment was successfully created'
  end

  scenario 'visitor cannot leave comment' do
    visit article_path(articles(:one))
    page.wont_have_link 'Leave comment'
  end
end
