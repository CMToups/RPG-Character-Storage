require 'spec_helper'

describe Tool do

  before(:each) do 
		@tool = Tool.new 
	end
  
  it "should save" do 
  	 @tool.save.should == true
  	 Tool.count.should == 1
  end
  
  it "should be a sub type of possession" do 
  	@tool.class.superclass.should == Possession 
  end
  
  it "should have and belong to a character" do 
  	@tool.character <<  Character.create(:name => :some_name)
  	@tool.save
  	Tool.first.character.first.should == Character.first
  end

#super  
  it "should have a valid name" do 
  	@tool.name = :some_name
  	@tool.save 
  	Tool.first.name.should == "some_name"
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
	
end
