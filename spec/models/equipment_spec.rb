require 'spec_helper'

describe Equipment do

  it "should have a valid name" do 
  	should respond_to(:name)
  end

  it "should have a valid family" do 
  	should respond_to(:family)
  end

  it "should have a valid category" do 
  	should respond_to(:category)
  end

  it "should have a valid subcategory" do 
  	should respond_to(:subcategory)
  end

  it "should have a valid cost" do 
  	should respond_to(:cost)
  end

  it "should have a valid dmg_s" do 
  	should respond_to(:dmg_s)
  end

  it "should have a valid armor_shield_bonus" do 
  	should respond_to(:armor_shield_bonus)
  end

  it "should have a valid maximum_dex_bonus" do 
  	should respond_to(:maximum_dex_bonus)
  end

  it "should have a valid dmg_m" do 
  	should respond_to(:dmg_m)
  end

  it "should have a valid weight" do 
  	should respond_to(:weight)
  end

  it "should have a valid critical" do 
  	should respond_to(:critical)
  end

  it "should have a valid armor_check_penalty" do 
  	should respond_to(:armor_check_penalty)
  end

  it "should have a valid arcane_spell_failure_chance" do 
  	should respond_to(:arcane_spell_failure_chance)
  end

  it "should have a valid range_increment" do 
  	should respond_to(:range_increment)
  end

  it "should have a valid speed_30" do 
  	should respond_to(:speed_30)
  end

  it "should have a valid type" do 
  	should respond_to(:weapon_type)
  end

  it "should have a valid speed_20" do 
  	should respond_to(:speed_20)
  end

  it "should have a valid full_text" do 
  	should respond_to(:full_text)
  end

  it "should have a valid reference" do 
  	should respond_to(:reference)
  end
  
end
