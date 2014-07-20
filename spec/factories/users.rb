require 'faker'
FactoryGirl.define do
  factory :user do
#    id Faker::Number.number(5)
    name Faker::Name.name()
    age Faker::Number.number(2)
    description Faker::Hacker.adjective
    groups {[FactoryGirl.create(:group)]}
#    groups << Group.find(1)
  end
end
