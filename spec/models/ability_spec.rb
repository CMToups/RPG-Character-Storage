require 'spec_helper'

describe Ability do
  
  it "should save" do
    ability = Ability.new(:name => :Strength)
    ability.save.should == true
  end

  it "should have a valid name" do
    strength = Ability.create(:name => :Strength)
    strength.should be_valid
  end
  
  it "should not have an invalid name" do
    strength = Ability.create(:name => :bad_name)
    strength.should_not be_valid
  end
 
  it "should not save with nil value" do
    strength = Ability.create(:name => :Strength, :value => nil)
    strength.value.should_not == nil #before validation: value ||= 0
  end
  
  it "value should default to 0" do
    strength = Ability.create(:name => :Strength)
    strength.value.should == 0
  end
  
  it "should respond to modifier" do
    strength = Ability.create(:name => :Strength)
    strength.should respond_to(:modifier)
  end
  
  it "modifier should be (value - 10) / 2" do
    strength = Ability.create(:name => :Strength, :value => 12)
    strength.modifier.should == 1
  end
  
  it "modifier should be a whole number" do
    strength = Ability.create(:name => :Strength, :value => 13)
    strength.modifier.should == 1
  end
  
  it "modifier should be negative" do
    strength = Ability.create(:name => :Strength, :value => 9)
    strength.modifier.should == -1
  end
  
  it "should respond to total_value" do
  	strength = Ability.create(:name => :Strength, :value => 10)
    strength.total_value.should == 10
  end
  
  describe "Effects #" do
    
    it "should respond to effects" do
      strength = Ability.create(:name => :Strength)
      strength.should respond_to(:effects)
    end
    
    it "create ability should have empty effects" do
      strength = Ability.create(:name => :Strength)
      strength.effects.should == {}
    end
    
    it "new ability should have empty effects" do
      strength = Ability.new(:name => :Strength)
      strength.save
      strength.effects.should == {}
    end
    
    it "should preserve effects when loaded from the database" do 
    	strength = Ability.new(:name => :Strength)
      strength.save
      strength.effects.should == {}   
      
      copy_strength = Ability.find(strength.id)
      copy_strength.effects.should == {}
    end
    
    it "add_effect should add effect to effects" do
      strength = Ability.create(:name => :Strength)
       @some_effect = mock_model(Ability)
       @some_effect.stub!(:name)
      strength.add_effect(@some_effect)
      strength.effects.should == { @some_effect.name => @some_effect}
    end
    
    it "remove_effect should remove effect to effects" do
      strength = Ability.create(:name => :Strength)
      @some_effect = mock_model(Ability)
      @some_effect.stub!(:name)
      @some_other_effect = mock_model(Ability)
      @some_other_effect.stub!(:name)
      strength.add_effect(@some_effect)
      strength.add_effect(@some_other_effect)
      strength.remove_effect(@some_effect)
      strength.effects.should == {@some_other_effect.name => @some_other_effect}
    end
    
  end
  
end
