require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should validate presence of title" do
    post = build(:post, title: nil)
    
    expect(post).not_to be_valid
  end

  it "should validate presence of body" do
    post = build(:post, body: nil)
    
    expect(post).not_to be_valid
  end

  it "is valid with valid attributes" do
    post = build(:post)
    expect(post).to be_valid
  end
end
