require 'spec_helper'

feature 'User edits a post' do
  scenario 'they see the Edited Post on the page' do
    post = create(:post)
    sign_in
    visit edit_post_path(post)

    fill_in 'Title', with: 'Edited Post Title'
    click_button 'Update Post'

    expect(page).to have_css '.post-title'
    expect(page).to have_content 'Edited Post Title'
  end
end