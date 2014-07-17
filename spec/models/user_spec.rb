require 'rails_helper'
require 'faker'
describe User do 
  
  it  "has a unique id" do
    id = Faker::Number.number(5)
    user1 = User.new
    user1.id = id
    user2 = User.new
    user2.id = (id.to_i+1).to_s
    expect(user1.id).should_not eql?(user2.id)
  end

  it "has age less than 100" do
    user = User.new
    user.age = Faker::Number.number(2)
    user.age.should be < 100
  end

  it "has a unique name" do
    user1 = User.new
    user1.name = Faker::Name.name()
    user2 = User.new
    user2.name = Faker::Name.name()
    user2.name.should_not eql?(user2.name)
  end

  it "should belong to at least one group!" do
    user = User.new
    group = Group.new
    user.groups << group
    expect(user.groups).not_to match_array(nil)
  end 
  
  it "names should be mandatory" do
    user = User.new
    user.name = "shehab"
    expect(user.name).should_not eql?(nil)
  end

  it "name, and others attributes should be mandatory" do
    user = User.new
    expect(user).not_to be_valid
  end

 
end
