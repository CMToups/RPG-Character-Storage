require 'spec_helper'

describe FeatType do
  
  it "should have many feats" do
    should have_many(:feat)
  end
  
   it "should have valid name" do
    should allow_value("climb").for(:name) 
  end

   it "should have valid prerequisites" do
    should allow_value("[some crazy prereq, with other stuff] and even other stuff").for(:prerequisites) 
  end

   it "should have valid description" do
    should allow_value("this is a feat").for(:description) 
  end
  
end
