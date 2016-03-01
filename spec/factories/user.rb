FactoryGirl.define do
  factory :user do
    profile

    email    { Faker::Internet.email }
    password { '12345678' }
  end
end
