require 'spec_helper'

describe Spell do
  
  it "should have many spell slots as magic" do 
  	should have_many(:spell_slot)
  end
  
  it "should have a valid name" do 
  	should respond_to(:name)
  end
  
  it "should have a valid altname" do 
  	should respond_to(:altname)
  end
  
  it "should have a valid school" do 
  	should respond_to(:school)
  end
  
  it "should have a valid subschool" do 
  	should respond_to(:subschool)
  end
  
  it "should have a valid descriptor" do 
  	should respond_to(:descriptor)
  end
  
  it "should have a valid spellcraft_dc" do 
  	should respond_to(:spellcraft_dc)
  end
  
  it "should have a valid level" do 
  	should respond_to(:level)
  end
  
  it "should have a valid components" do 
  	should respond_to(:components)
  end
  
  it "should have a valid casting_time" do 
  	should respond_to(:casting_time)
  end
  
  it "should have a valid spell_range" do 
  	should respond_to(:spell_range)
  end
  
  it "should have a valid spell_target" do 
  	should respond_to(:spell_target)
  end
  
  it "should have a valid area" do 
  	should respond_to(:area)
  end
  
  it "should have a valid result" do 
  	should respond_to(:result)
  end
  
  it "should have a valid duration" do 
  	should respond_to(:duration)
  end
  
  it "should have a valid saving_throw" do 
  	should respond_to(:saving_throw)
  end
  
  it "should have a valid spell_resistance" do 
  	should respond_to(:spell_resistance)
  end
  
  it "should have a valid short_description" do 
  	should respond_to(:short_description)
  end
  
  it "should have a valid to_develop" do 
  	should respond_to(:to_develop)
  end
  
  it "should have a valid material_components" do 
  	should respond_to(:material_components)
  end
  
  it "should have a valid arcane_material_components" do 
  	should respond_to(:arcane_material_components)
  end
  
  it "should have a valid focus" do 
  	should respond_to(:focus)
  end
  
  it "should have a valid description" do 
  	should respond_to(:description)
  end
  
  it "should have a valid xp_cost" do 
  	should respond_to(:xp_cost)
  end
  
  it "should have a valid arcane_focus" do 
  	should respond_to(:arcane_focus)
  end
  
  it "should have a valid wizard_focus" do 
  	should respond_to(:wizard_focus)
  end
  
  it "should have a valid verbal_components" do 
  	should respond_to(:verbal_components)
  end
  
  it "should have a valid sorcerer_focus" do 
  	should respond_to(:sorcerer_focus)
  end
  
  it "should have a valid bard_focus" do 
  	should respond_to(:bard_focus)
  end
  
  it "should have a valid cleric_focus" do 
  	should respond_to(:cleric_focus)
  end
  
  it "should have a valid druid_focus" do 
  	should respond_to(:druid_focus)
  end
  
  it "should have a valid full_text" do 
  	should respond_to(:full_text)
  end
  
  it "should have a valid reference" do 
  	should respond_to(:reference)
  end
  
end
