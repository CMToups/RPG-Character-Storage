require 'spec_helper'

describe Effect do
  
  it "should have a valid name" do 
  	should respond_to(:name)
  end
  
  it "should have a valid target_klass" do 
  	should respond_to(:target_klass)
  end
  
  it "should have a valid target_instance" do 
  	should respond_to(:target_instance)
  end
  
  it "should belong to an effector" do 
  	should belong_to(:effector)
  end

  it "should have_many effectables" do 
  	should have_many(:effectable).dependent(:destroy)
  end

	it "should have a valid value" do 
		should respond_to(:value)
	end   
end
