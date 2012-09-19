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
  
		it "should have many effectables" do
			should have_many(:effectable)
		end
		
		it "should have many effects" do
			should have_many(:effect).through(:effectable)
		end
  
  describe " # Effects" do
    
    it "should be unique" do 
    	strength = Ability.create(:name => :Strength)
    	effect = Effect.create(:name => :some_name)
      strength.effect << effect
      strength.effect.count.should == 1
      strength.effect << effect
      strength.effect.count.should == 1
    end
    
    it "add_effect should add effect to effectable's relationship" do
      strength = Ability.create(:name => :Strength)
      strength.effect << Effect.create(:name => :some_name)
      strength.effect.first.name.should == "some_name"
    end
    
    it "remove_effect should remove effect when origin is deleted" do
      race = Race.new 
      race.effect << Effect.create(:name => :some_name)
      race.save
      strength = Ability.create(:name => :Strength)
      strength.effect << race.effect.first
      Ability.first.effect.first.name.should == "some_name"
      strength.save
      race.destroy
      Race.first.should == nil
      Ability.first.effect.should == []
    end
    
    it "should update total value" do 
    	strength = Ability.create(:name => :Strength, :value => 10)
      strength.effect << Effect.create(:name => :some_name, :value => 1)
      Ability.first.total_value.should == 11
    end
    
  end
  
end
