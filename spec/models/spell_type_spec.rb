require 'spec_helper'

describe Spell do
  it "should have many spell slots" do 
  	should have_many(:spell_slot)
  end
  
  it "should have a valid name" do 
  	should respond_to(:name)
  end

  it "should have a valid school" do 
  	should respond_to(:school)
  end
   
  it "should have a valid descriptor" do 
  	should respond_to(:descriptor)
  end  
  
  it "should have a valid description" do 
  	should respond_to(:description)
  end
  it "should have a valid caster level cleric" do 
  	should respond_to(:cl_cleric)
  end
  it "should have a valid caster level druid" do 
  	should respond_to(:cl_druid)
  end
  it "should have a valid caster level paladin" do 
  	should respond_to(:cl_paladin)
  end
  it "should have a valid caster level sorcerer" do 
  	should respond_to(:cl_sorcerer)
  end
  
  it "should have a valid caster level ranger" do 
  	should respond_to(:cl_ranger)
  end

  it "should have a valid caster level wizard" do 
  	should respond_to(:cl_wizard)
  end
  
  it "should have a valid components" do 
  	should respond_to(:components)
  end
  
  it "should have a valid range" do 
  	should respond_to(:range)
  end
  
  it "should have a valid casting time" do 
  	should respond_to(:casting_time)
  end
  
  it "should have a valid duration" do 
  	should respond_to(:duration)
  end
  
  it "should have a valid saving throw" do 
  	should respond_to(:saving_throw)
  end

end
