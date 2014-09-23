require 'test_helper'

feature 'Site owner edits a project' do
  scenario 'with a valid object they see an update message' do
    visit edit_project_path(projects(:one))
    fill_in 'Title', with: 'A Different Title'
    click_on 'Update Project'
    page.status_code.must_equal 200
    page.text.must_include 'Project updated'
    page.text.must_include 'A Different Title'
  end
  
  scenario 'with an invalid object they see error messages' do
    visit edit_project_path(projects(:one))
    fill_in 'Title', with: ''
    fill_in 'Category', with: ''
    fill_in 'Description', with: ''
    click_on 'Update Project'
    page.text.must_include "Title can't be blank"
    page.text.must_include "Category can't be blank"
    page.text.must_include "Description can't be blank"
  end
end