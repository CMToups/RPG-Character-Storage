require 'spec_helper'

describe Possession do

  it "should be citier complyant" do 
  	should respond_to(:type)
  end

  it "should have and belong to characters" do 
  	should have_and_belong_to_many(:character)
  end
  
  it "should have a valid name" do 
  	should respond_to(:name)
  end
  
end
