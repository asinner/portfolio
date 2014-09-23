require 'test_helper'

feature 'Site Owner creates a project' do
  scenario 'they see a success message with a valid project' do
    visit projects_path
    click_on 'New Project'  
    fill_in 'Title', with: 'Portfolio'
    fill_in 'Category', with: 'Personal Website'
    fill_in 'Description', with: 'This portfolio site blah blah blah'
    fill_in 'Url', with: 'www.andrewsinner.com'
    click_on 'Create Project'
    page.status_code.must_equal 200
    page.text.must_include 'Project was successfully created'
  end
  
  scenario 'they see an error message with an invalid project ' do
    visit new_project_path
    click_on 'Create Project'
    current_path.must_match /projects$/
    page.text.must_include 'Project could not be saved'
    page.text.must_include "Title can't be blank"
    page.text.must_include "Category can't be blank"
    page.text.must_include "Description can't be blank"
    page.text.must_include "Url can't be blank"
  end
end
