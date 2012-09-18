require 'spec_helper'

describe Role do
  it "should belong to a character" do 
  	should belong_to :character
  end
  
  it "should belong to a role type" do 
  	should belong_to :role_type
  end
  
  it "should have a valid level" do 
  	should respond_to(:level)
  end
  
end
