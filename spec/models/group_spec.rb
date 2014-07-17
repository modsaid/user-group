require 'rails_helper'
require 'faker'
describe Group do
  it "must have a title" do
    group1 = Group.new
    group1.title = "shehios_group"
    group1.title.should_not eql?(nil) 
  end
  it  "has a unique title" do
    group1 = Group.new
    group1.title = "shehios_group"
    group2 = Group.new
    group2.title = "not_shehios_group"
    expect(group1.title).should_not eql?(group2.title)
  end
  it "has a mandotary name" do
    group = Group.new
    expect(group).not_to be_valid
  end
end
