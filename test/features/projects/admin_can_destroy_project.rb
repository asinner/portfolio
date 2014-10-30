require 'test_helper'

feature 'Admin can remove a project' do
  scenario 'from dashboard' do
    sign_in
    visit admin_projects_path
    find("#project_#{projects(:one).id}").click_link 'Remove'
    page.text.wont_include projects(:one).title
  end
end