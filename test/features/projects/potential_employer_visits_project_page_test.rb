require 'test_helper'

feature 'Potential employer visits project page' do
  scenario 'they see the project' do
    visit project_path(projects(:two))
    page.text.must_include 'eCommerce'
  end
end
