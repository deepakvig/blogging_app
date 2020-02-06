require 'spec_helper'

feature 'Visitor signs up' do
  scenario 'with valid email and password' do
    sign_up_with 'valid@example.com', 'password', 'Valid Name'

    expect(page).to have_content('Sign Out')
  end

  scenario 'with invalid email' do
    sign_up_with 'invalid_email', 'password', 'Valid Name'

    expect(page).to have_content('Sign In')
  end

  scenario 'with blank password' do
    sign_up_with 'valid@example.com', '', 'Valid Name'

    expect(page).to have_content('Sign In')
  end
end