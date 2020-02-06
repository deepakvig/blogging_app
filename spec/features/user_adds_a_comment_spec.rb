require 'spec_helper'

feature 'User adds a comment' do
  scenario 'they see the New Comment on the page' do
    post = create(:post)
    sign_in
    visit post_path(post)

    click_link 'Add Comment'

    fill_in 'comment_body', with: 'New Comment'

    click_button 'Create Comment'
    expect(page).to have_content 'Comment was successfully created.'
    expect(page).to have_content 'New Comment'
  end

  scenario 'they see error for invalid comment' do
    post = create(:post)
    sign_in
    visit post_path(post)

    click_link 'Add Comment'

    fill_in 'comment_body', with: ''

    click_button 'Create Comment'
    expect(page).to have_content 'Comment cannot be created.'
  end
end