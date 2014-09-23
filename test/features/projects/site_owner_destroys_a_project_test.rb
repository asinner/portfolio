require 'test_helper'

feature 'Site owner destroys a project' do
  scenario 'they see a deletion message' do
    visit project_path(projects(:two))
    click_on 'Delete'
    page.wont_have_content 'eCommerce'
  end
end
