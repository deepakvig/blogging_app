require 'spec_helper'

feature 'User creates a post' do
  scenario 'they see the New Post on the page' do
    sign_in
    visit new_post_path

    fill_in 'Title', with: 'Post Title'
    fill_in 'Body', with: 'Post Body'
    click_button 'Create Post'

    expect(page).to have_css '.post-title'
    expect(page).to have_content 'Post Title'
  end

  scenario 'they see error for invalid params' do
    sign_in
    visit new_post_path

    fill_in 'Title', with: ''
    fill_in 'Body', with: ''
    click_button 'Create Post'

    expect(page).to have_content "Title can't be blank"
    expect(page).to have_content "Body can't be blank"
  end
end