require 'test_helper'

feature 'Site owner edits a project' do
  scenario 'with a valid object they see an update message' do
    sign_in
    visit edit_admin_project_path(projects(:one))
    fill_in 'Title', with: 'A Different Title'
    click_on 'Update Project'
    page.text.must_include 'A Different Title'
  end
end
