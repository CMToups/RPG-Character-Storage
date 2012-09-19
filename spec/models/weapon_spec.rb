require 'spec_helper'

describe Weapon do
	before(:each) do 
		@weapon = Weapon.new 
	end
	
  it "should be a sub type of possession" do 
  	@weapon.class.superclass.should == Possession 
  end
  
  it "should have and belong to a character" do 
  	@weapon.character <<  Character.create(:name => :some_name)
  	@weapon.save
  	Weapon.first.character.first.should == Character.first
  end

#super  
  it "should have a valid name" do 
  	@weapon.name = :some_name
  	@weapon.save 
  	Weapon.first.name.should == "some_name"
  end
  
  it "should have a valid monetary value" do 
  	should respond_to(:monetary_value)
  end

  it "should have a valid description" do 
  	should respond_to(:description)
  end
  
  it "should have a valid weight" do 
  	should respond_to(:weight)
  end
  
  it "should have a valid construction caster level" do 
  	should respond_to(:construction_caster_level)
  end
  
  it "should have a valid construction requirements" do 
  	should respond_to(:construction_requirements)
  end
  
  it "should have a valid construction cost" do 
  	should respond_to(:construction_cost)
  end  
  
#class  

	it "should have a valid category" do 
  	should respond_to(:category)
  end 

	it "should have a valid damage" do 
  	should respond_to(:damage)
  end 

	it "should have a valid lethal" do 
  	should respond_to(:lethal)
  end 

	it "should have a valid critical range" do 
  	should respond_to(:critical_range)
  end 

	it "should have a valid critical_damage" do 
  	should respond_to(:critical_damage)
  end 

	it "should have a valid range" do 
  	should respond_to(:range)
  end 

	it "should have a valid weapon type" do 
  	should respond_to(:weapon_type)
  end 

	it "should have a valid magical_name" do 
  	should respond_to(:magical_name)
  end 

	it "should have a valid magic_value" do 
  	should respond_to(:magic_value)
  end 
  
end
