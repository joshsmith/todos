require 'spec_helper'

feature 'Sign in as a user' do
  scenario 'with an email address' do
    email = 'person@example.com'
    sign_in_as email
    expect(page).to have_css '.welcome', text: "Welcome, #{email}"
  end
end