require 'test_helper'

feature 'Articles can CRUD via ajax' do
  scenario '#create' do
    sign_in
    visit new_admin_article_path
  end
end
