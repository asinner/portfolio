require 'test_helper'

feature 'Site owner destroys an article' do
  scenario 'they see article removed message' do
    sign_in
    visit article_path(articles(:one))
    click_link('Delete')
    page.wont_have_content(articles(:one).title)
  end
end
