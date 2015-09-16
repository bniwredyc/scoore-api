# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :score do
    value 42
    attempt
    judge
  end
end
