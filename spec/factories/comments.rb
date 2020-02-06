FactoryBot.define do
  factory :comment do
    post
    body { "MyText" }
    user
  end
end
