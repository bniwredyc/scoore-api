# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :performance do
    type :individual
    sequence(:sort) { |n| n }
    contest
    athlete

    factory :jam do
      type :jam
      transient do
        children_count 3
      end

      after(:create) do |performance, evaluator|
        create_list(:performance, evaluator.children_count, :parent => performance)
      end
    end

    factory :group do
      type :group
      transient do
        children_count 3
      end

      after(:create) do |performance, evaluator|
        create_list(:performance, evaluator.children_count, :parent => performance)
      end
    end
  end


end
