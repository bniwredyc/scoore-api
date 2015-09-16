# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :board do
    event nil
    contests nil
    main false
    template "MyString"
  end
end
