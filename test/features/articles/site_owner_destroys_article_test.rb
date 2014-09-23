require 'test_helper'

feature 'Site owner destroys an article' do
  scenario 'they see article removed message' do
    visit articles_path
    first("##{articles(:one).id}").click_link('Delete')
    page.wont_have_content(articles(:one).title)
  end
end