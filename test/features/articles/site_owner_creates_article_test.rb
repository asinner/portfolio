require 'test_helper'

feature 'Site owner creates an article' do
  scenario 'they see article created' do
    sign_in(:author)
    visit new_article_path
    fill_in 'Title', with: articles(:new).title
    fill_in 'Body', with: articles(:new).body
    click_on 'Create Article'
    page.text.must_include 'Article was successfully created.'
    page.has_css? '#author'
    page.text.must_include users(:author).email
    page.text.must_include 'Status: Unpublished'
  end

  scenario 'unauthenticated visitors cannot see new link button' do
    visit articles_path
    page.wont_have_link 'New Article'
  end

  scenario 'unauthenticated visitors cannot visit new_article_path' do
    visit new_article_path
    page.text.must_include 'You need to sign in or sign up before continuing'
  end

  scenario 'Authors cannot publish' do
    sign_in(:author)
    visit new_article_path
    page.wont_have_field 'Published'

    fill_in 'Title', with: 'Hello, World'
    fill_in 'Body', with: 'Example text'
    click_on 'Create Article'
  end

  scenario 'Editors can publish' do
    sign_in(:editor)
    visit new_article_path
    page.must_have_field 'Published'
    fill_in 'Title', with: 'Hello, World from test!'
    fill_in 'Body', with: 'Example text for body'
    check 'Published'
    click_on 'Create Article'
    page.must_have_content 'Article was successfully created'
    page.must_have_content 'Hello, World from test!'
    page.must_have_content 'Status: Published'
  end
end
