require 'test_helper'

feature 'Admin can create, update, destroy articles' do  
  scenario '#create' do
    sign_in
    visit new_admin_article_path
    fill_in 'Title', with: 'My newly created article'
    fill_in 'article_body', with: 'My example article body'
    click_button 'Save article'
    page.text.must_include 'My newly created article'
  end
  
  scenario '#update' do
    sign_in
    visit edit_admin_article_path(articles(:one))
    fill_in 'Title', with: 'My newly updated title'
    click_button 'Save article'
    page.text.must_include 'My newly updated title'
  end
  
  scenario '#destroy' do
    sign_in
    visit edit_admin_article_path(articles(:one))
    click_link 'Delete this article'
    page.text.wont_include articles(:one).title
  end
end