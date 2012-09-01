require 'spec_helper'

describe SkillType do
  it "should have many skills" do
    should have_many(:skill)
  end
  
   it "should have valid name" do
    should allow_value("climb").for(:name) 
  end

   it "should have valid description" do
    should allow_value("this is a skill").for(:description)
  end
  
   it "should have valid ability_type" do
    should allow_value(:Strangth).for(:ability_type) 
  end
  
end
