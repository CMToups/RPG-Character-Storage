require 'spec_helper'

describe Feat do
  it "should have and belong to many characters" do
     should have_and_belong_to_many(:character)
  end
  
   it "should have valid name" do
    should allow_value("Power Overwhelming").for(:name) 
  end

   it "should have valid description" do
    should allow_value("this is a feat").for(:description)
  end
  
   it "should have valid prerequisites" do
    should allow_value("crazy prereq").for(:prerequisites) 
  end
  
end
