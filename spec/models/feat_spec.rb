require 'spec_helper'

describe Feat do
	
	it "should have many achievements" do 
		should have_many(:achievement)
	end

  it "should have many characters through achievements" do
     should have_many(:character).through(:achievement)
  end
  
  it "should have and belong to many role_types" do 
     should have_and_belong_to_many(:role_type)
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
