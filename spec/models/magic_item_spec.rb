require 'spec_helper'

describe MagicItem do

  it "should have a valid name" do 
  	should respond_to(:name)
  end

  it "should have a valid category" do 
  	should respond_to(:category)
  end

  it "should have a valid subcategory" do 
  	should respond_to(:subcategory)
  end

  it "should have a valid special_ability" do 
  	should respond_to(:special_ability)
  end

  it "should have a valid aura" do 
  	should respond_to(:aura)
  end

  it "should have a valid caster_level" do 
  	should respond_to(:caster_level)
  end

  it "should have a valid price" do 
  	should respond_to(:price)
  end

  it "should have a valid manifester_level" do 
  	should respond_to(:manifester_level)
  end

  it "should have a valid prereq" do 
  	should respond_to(:prereq)
  end

  it "should have a valid cost" do 
  	should respond_to(:cost)
  end

  it "should have a valid weight" do 
  	should respond_to(:weight)
  end

  it "should have a valid full_text" do 
  	should respond_to(:full_text)
  end

  it "should have a valid reference" do 
  	should respond_to(:reference)
  end
  
end
