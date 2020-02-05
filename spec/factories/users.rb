FactoryBot.define do
  factory :user do
    name { "John Doe" }
    sequence(:email) { |n| "test-#{n.to_s.rjust(3,'0')}@example.com" }
    password { "123456" }
    description { "Some details" }
  end
end
