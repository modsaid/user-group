require 'rails_helper'
require 'faker'
describe Group do
  it "must have a title" do
    group = FactoryGirl.create(:group)
    group.title.should_not eql?(nil) 
  end
  it "has a unique title" do
    group1 = FactoryGirl.create(:group)
    group2 = FactoryGirl.create(:group)
    expect(group1.title).should_not eql?(group2.title)
  end
  it "has a mandotary title" do
    group = FactoryGirl.build(:group, title: "")#.should have(1).errors_on(:title)
    expect(group).not_to be_valid
   # group.should have(1).errors_on(:title)
  end
end
