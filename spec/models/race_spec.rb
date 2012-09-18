require 'spec_helper'

describe Race do

  it "should have a valid name" do 
  	should respond_to(:name)
  end
  
  it "should have a valid speed" do 
  	should respond_to(:speed)
  end
  
  it "should have a valid vision" do 
  	should respond_to(:vision)
  end
  
  it "should have many effects" do 
  	should have_many(:effect).dependent(:destroy)
  end
  
  it "should have many chracters" do 
  	should respond_to(:character)
  end
  
  it "should accept nested attributes for effects" do 
  	should accept_nested_attributes_for :effect
  end
  
	it "should be able to create an effect" do 
		race = Race.create 
		race.effect.create(:name => :some_effect)
		race.save
		race.effect.first.name.should == "some_effect"
	end
	
end
