FactoryBot.define do
  factory :task do
    name {"Tasktest"}
    description {"testtest"}
    association :user
  end
end
