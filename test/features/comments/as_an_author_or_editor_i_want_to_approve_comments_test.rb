require 'test_helper'

feature 'As an author or editor I want to approve comments' do
  scenario 'approve a comment' do
    sign_in(:author)
    visit article_path(articles(:one).id)
    click_link 'Approve'
    page.text.must_include 'Status: Approved'
  end

  scenario 'only approved comments show for visitors' do
    visit article_path(articles(:one).id)
    page.text.wont_include comments(:one).author
  end
end
