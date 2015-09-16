# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :athlete do
    first_name "Athlete first name"
    last_name "Athlete last name"
    discipline
  end
end
