require 'test_helper'

feature 'Site owner destroys an article' do
  scenario 'they see article removed message' do
    visit articles_path
    click_on 'Destroy'
    page.text.must_include('Article removed')
  end
end
