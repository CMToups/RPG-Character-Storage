require 'spec_helper'

describe Ability do
  
  it "should save" do
    ability = Ability.new(:name => :Strangth)
    ability.save.should == true
  end

  it "should have a valid name" do
    strangth = Ability.create(:name => :Strangth)
    strangth.should be_valid
  end
  
  it "should not have an invalid name" do
    strangth = Ability.create(:name => :bad_name)
    strangth.should_not be_valid
  end
 
  it "should not save with nil value" do
    strangth = Ability.create(:name => :Strangth, :value => nil)
    strangth.value.should_not == nil #before validation: value ||= 0
  end
  
  it "value should default to 0" do
    strangth = Ability.create(:name => :Strangth)
    strangth.value.should == 0
  end
  
  it "should respond to modifier" do
    strangth = Ability.create(:name => :Strangth)
    strangth.should respond_to(:modifier)
  end
  
  it "modifier should be (value - 10) / 2" do
    strangth = Ability.create(:name => :Strangth, :value => 12)
    strangth.modifier.should == 1
  end
  
  it "modifier should be a whole number" do
    strangth = Ability.create(:name => :Strangth, :value => 13)
    strangth.modifier.should == 1
  end
  
  it "modifier should be negative" do
    strangth = Ability.create(:name => :Strangth, :value => 9)
    strangth.modifier.should == -1
  end
  
  describe "Effects #" do
    
    it "should respond to effects" do
      strangth = Ability.create(:name => :Strangth)
      strangth.should respond_to(:effects)
    end
    
    it "new ability should have empty effects" do
      strangth = Ability.create(:name => :Strangth)
      strangth.effects.should == {}
    end
    
    it "add_effect should add effect to effects" do
      strangth = Ability.create(:name => :Strangth)
       @some_effect = mock_model(Ability)
       @some_effect.stub!(:name)
      strangth.add_effect(@some_effect)
      strangth.effects.should == { @some_effect.name => @some_effect}
    end
    
    it "remove_effect should remove effect to effects" do
      strangth = Ability.create(:name => :Strangth)
      @some_effect = mock_model(Ability)
      @some_effect.stub!(:name)
      @some_other_effect = mock_model(Ability)
      @some_other_effect.stub!(:name)
      strangth.add_effect(@some_effect)
      strangth.add_effect(@some_other_effect)
      strangth.remove_effect(@some_effect)
      strangth.effects.should == {@some_other_effect.name => @some_other_effect}
    end
    
  end
  
end
