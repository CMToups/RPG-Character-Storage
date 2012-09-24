require 'spec_helper'

describe Service do
  
  before(:each) do 
		@service = Service.new 
	end
  
  it "should be a sub type of possession" do 
  	@service.class.superclass.should == Possession 
  end
  
  it "should have and belong to a character" do 
  	@service.character <<  Character.create(:name => :some_name)
  	@service.save
  	Service.first.character.first.should == Character.first
  end

#super  
  it "should have a valid name" do 
  	@service.name = :some_name
  	@service.save 
  	Service.first.name.should == "some_name"
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
