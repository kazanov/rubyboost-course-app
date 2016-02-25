FactoryGirl.define do
  factory :course do
    user

    sequence(:title)  { |n| "Course title-#{n}" }
    active { true }
  end
end
