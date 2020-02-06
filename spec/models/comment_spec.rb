require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "should validate presence of body" do
    comment = build(:comment, body: nil)
    
    expect(comment).not_to be_valid
  end

  it "is valid with valid attributes" do
    comment = build(:comment)
    expect(comment).to be_valid
  end
end
