# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'user@scoo.red'
    password '123456789'
  end

  factory :admin, :class => User do
    email 'admin@scoo.red'
    password '123456789'
  end
end
