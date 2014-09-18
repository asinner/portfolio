require 'test_helper'

feature 'Employers want to see articles' do
  scenario 'they see articles on index' do
    visit articles_path
    page.text.must_include('Hello, World')
  end
end