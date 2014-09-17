require "test_helper"

describe "My welcome page", :capybara do
  it "exists" do
    visit root_path
    assert(page.status_code, 200)
    page.text.must_include "Welcome to my portfolio"
  end
end