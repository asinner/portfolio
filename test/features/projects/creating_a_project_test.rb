require 'test_helper'

feature 'Site Owner creates a project' do
  scenario 'they see a success message' do
    visit projects_path
    click_on 'New Project'  
    fill_in 'Title', with: 'Portfolio'
    fill_in 'Category', with: 'Personal Website'
    fill_in 'Description', with: 'This portfolio site blah blah blah'
    fill_in 'Url', with: 'www.andrewsinner.com'
    click_on 'Create Project'
    save_and_open_page
    page.status_code.must_equal 200
    page.text.must_include 'Project was successfully created'
  end
end
