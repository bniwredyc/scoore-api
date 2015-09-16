# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contest do
    slug "test_contest"
    event
    discipline
  end
end
