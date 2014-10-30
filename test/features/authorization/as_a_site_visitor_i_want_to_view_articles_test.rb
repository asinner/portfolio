require 'test_helper'

feature 'As a site visitor I want to view articles' do
  scenario 'see articles index' do
    visit articles_path
    page.text.must_include(articles(:one).title)
    page.text.must_include(articles(:one).body)
    page.text.must_include(articles(:two).title)
    page.text.must_include(articles(:two).body)
    page.text.must_include(articles(:four).title)
    page.text.must_include(articles(:four).body)
  end
end
