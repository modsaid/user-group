require 'rails_helper'
require 'faker'

describe User do 
  
#  it  "must have an id" do
#    user = FactoryGirl.create(:user, id: nil)
#    expect(user).not_to be_valid
#  end

  it "has age less than 100" do
    user = FactoryGirl.build(:user, age:101)
    expect(user).not_to be_valid
  end

  it "has a unique name" do
    user1 = FactoryGirl.create(:user, name: 'shehio')
    user2 = FactoryGirl.build(:user, name: 'shehio')
    expect(user2).not_to be_valid
  end
 
  it "name should be mandatory" do
    user = FactoryGirl.build(:user, name: nil)
    expect(user).not_to be_valid
  end

#  it "should belong to a group"
#  end
 
end
