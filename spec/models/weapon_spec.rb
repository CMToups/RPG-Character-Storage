require 'spec_helper'

describe Weapon do
	before(:each) do 
		@weapon = Weapon.create 
	end
	
  it "should be a sub type of possession" do 
  	@weapon.class.superclass.should == Possession 
  end
  
  it "should have and belong to a character" do 
  	should have_and_belongs_to_many(:character)
  end
  
  it "should have a valid name" do 
  	@weapon.name = :some_name
  	@weapon.save 
  	Weapon.first.name.should == "some_name"
  end
end
