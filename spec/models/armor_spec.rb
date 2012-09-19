require 'spec_helper'

describe Armor do

  before(:each) do 
		@armor = Armor.new 
	end
  
  it "should be a sub type of possession" do 
  	@armor.class.superclass.should == Possession 
  end
  
  it "should have and belong to a character" do 
  	@armor.character <<  Character.create(:name => :some_name)
  	@armor.save
  	Armor.first.character.first.should == Character.first
  end

#super  
  it "should have a valid name" do 
  	@armor.name = :some_name
  	@armor.save 
  	Armor.first.name.should == "some_name"
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
  
  it "should have a valid slot" do 
  	should respond_to(:slot)
  end
  
  it "should have a valid maximum dexterity value" do 
  	should respond_to(:maximum_dexterity_value)
  end
  
  it "should have a valid armor check penalty" do 
  	should respond_to(:armor_check_penalty)
  end
  
  it "should have a valid spell failure" do 
  	should respond_to(:spell_failure)
  end
  
  it "should have a valid speed limitation" do 
  	should respond_to(:speed_limitation)
  end
  
  it "should have a valid magic value" do 
  	should respond_to(:magic_value)
  end

end
