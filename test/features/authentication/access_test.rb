require 'test_helper'

feature("
  As a site visitor I want to be able to sign up
  so that I can acces actions that require me
  to be logged in
") do
  scenario 'sign up' do
    visit root_path
    click_link 'Sign up'    
    fill_in 'Email', with: 'andrew2@example.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Sign up'
    page.must_have_content 'Welcome! You have signed up successfully'
    page.wont_have_content 'There was a problem with your sign up'
  end
end
