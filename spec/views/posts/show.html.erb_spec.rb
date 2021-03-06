require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:user) { create :user }
  before(:each) do
    allow(view).to receive(:current_user).and_return(user)
    @post = assign(:post, Post.create!(
      :title => "Title",
      :body => "MyText",
      :user => user
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
