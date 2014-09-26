require 'test_helper'

feature 'As an author I should not be able to delete articles' do
  scenario 'delete' do
    sign_in(:author)
    visit articles_path
    page.wont_have_link 'Delete'
  end
end
