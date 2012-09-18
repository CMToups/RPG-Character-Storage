require 'spec_helper'

describe CharacterClass do
  
  it "should belong to a character" do 
		should belong_to(:character)  
  end
  
  it "should belong to a class type" do
  	should belong_to(:character_class_type)
  end
  
  it "should have a valid level" do 
  	should respond_to(:level)
  end
  
end
