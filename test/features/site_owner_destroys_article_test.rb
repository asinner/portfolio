require 'test_helper'

feature 'Site owner destroys an article' do
  scenario 'they see article removed message' do
    visit articles_path
    # Instead of finding relative destroy link
    #  use a specific article id. Allows for smarter exception checking.
    first("##{articles(:one).id}").click_link('Delete')
    page.wont_have_content(articles(:one).title)
  end
end
