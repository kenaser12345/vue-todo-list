FactoryBot.define do
  factory :user do
    name {"Bancat"}
    sequence(:email) { |n | "banacat#{n}@test.com"}
    password {"123456"}
  end
end
