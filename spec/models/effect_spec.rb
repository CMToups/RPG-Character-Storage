require 'spec_helper'

describe Effect do
  
  it "should have a valid name" do 
  	should respond_to(:name)
  end
  
  it "should have a valid applies_to_klass" do 
  	should respond_to(:applies_to_klass)
  end
  
  it "should have a valid applies_to_instance" do 
  	should respond_to(:applies_to_instance)
  end
  
  it "should belong to an effector" do 
  	should belong_to(:effectable)
  end

    
end
