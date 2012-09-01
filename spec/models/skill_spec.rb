require 'spec_helper'

describe Skill do
  
  it "should belong to a character" do
    should belong_to(:character)
  end

  it "should belong to a skill type" do
    should belong_to(:skill_type)
  end

  it "should accept nested attributes for skill type" do
    should accept_nested_attributes_for(:skill_type)
  end

   it "should have valid rank" do
    should allow_value(4).for(:rank)
  end
  
end
