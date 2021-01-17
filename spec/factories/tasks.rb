FactoryBot.define do
  factory :task do
    association :user
    name {"Tasktest"}
    description {"testtest"}
  end
end
