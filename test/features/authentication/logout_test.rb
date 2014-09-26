require 'test_helper'

feature 'As a site owner I want to sign out a user to prevent fraud' do
  scenario 'sign out' do
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: users(:andrew).email
    fill_in 'Password', with: '12345678'
    click_on 'Log in'
    click_on 'Sign out'
    page.must_have_content 'Signed out'
  end
end
