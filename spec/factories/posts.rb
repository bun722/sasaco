FactoryBot.define do
  factory :post do
    association :user
    content { "パンダかわいい" }

  end
end
