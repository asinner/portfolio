require 'test_helper'

feature 'Site owner destroys an article' do
  scenario 'they see article removed message' do
    visit articles_path
    click_on 'Destroy'
    page.wont_have_content('Hello, World')
  end
end
