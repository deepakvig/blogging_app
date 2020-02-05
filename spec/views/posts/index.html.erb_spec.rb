require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    user = User.create(attributes_for(:user).merge({name: 'Deepak Vig'}))
    assign(:posts, [
      Post.create!(
        :title => "Title",
        :body => "MyText",
        :user => user
      ),
      Post.create!(
        :title => "Title",
        :body => "MyText",
        :user => user
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 'Deepak Vig'.to_s, :count => 2
  end
end
