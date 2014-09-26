require 'test_helper'

feature 'As a site visitor I want to view articles' do
  scenario 'see articles index' do
    visit articles_path
    page.text.must_include(articles(:one).title)
    page.text.must_include(articles(:one).body)
    page.text.must_include(articles(:new).title)
    page.text.must_include(articles(:new).body)
  end
end
