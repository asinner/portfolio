require 'test_helper'

feature 'Potential employer visits projects index' do
  scenario 'with projects they see all projects' do
    visit projects_path
    page.text.must_include 'Portfolio'
    page.text.must_include 'eCommerce'
  end
end
