FactoryGirl.define do
  factory :post do
    title Faker::Hacker.say_something_smart
    url Faker::Internet.url
  end
end
