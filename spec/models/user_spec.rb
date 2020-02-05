require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:entity1)  { FactoryBot.create(:user) }
  
  it "should validate presence of email" do
    user = build(:user, email: nil)
    
    expect(user).not_to be_valid
  end

  it "should validate presence of email" do
    user = build(:user, name: nil)
    
    expect(user).not_to be_valid
  end
  
  it "should show error message for duplicate email" do
    user = build(:user, email: entity1.email)
    user.valid?
    expect(user.errors.full_messages[0]).to eq("Email has already been taken")
  end

end
