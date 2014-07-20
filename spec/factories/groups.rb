require 'faker'
FactoryGirl.define do
  factory :group do
#    id Faker::Number.number(5)
    title Faker::Name.name()
  end
end

