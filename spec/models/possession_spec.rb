require 'spec_helper'

describe Possession do

  it "should be citier complyant" do 
  	should respond_to(:type)
  end
  
  it "should have many effects" do 
     should have_many(:effect).dependent(:destroy)
  end   
  
  it "should have a valid name" do 
  	should respond_to(:name)
  end

  it "should have and belong to characters" do 
  	should have_and_belong_to_many(:character)
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
