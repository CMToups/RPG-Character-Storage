require 'spec_helper'

describe Ability do
  
  before(:each) do 
  	@ability = Character.create(:name => :some_name).ability.first
  end
  
  
  it "should save" do
    @ability.save!.should == true
  end

  it "should have a valid name" do
    @ability.should be_valid
  end
  
  it "should not have an invalid name" do
    @ability.name = :bad_name
    @ability.should_not be_valid
  end
 
  it "should not save with nil value" do
    @ability.value = nil
    @ability.save
    @ability.value.should_not == nil #before validation: value ||= 0
  end
  
  it "value should default to 0" do
    @ability.value = nil
    @ability.save
    @ability.value.should == 0
  end
  
  it "should be able to update its own value" do 
  	@ability.value.should == 10
    @ability.value = 12
    @ability.save
    @ability.value.should == 12
  end
  
  it "should respond to modifier" do
    @ability.should respond_to(:modifier)
  end
  
  it "modifier should be (value - 10) / 2" do
    @ability.value = 12
    @ability.modifier.should == 1
  end
  
  it "modifier should be a whole number" do
		@ability.value = 13
    @ability.modifier.should == 1
  end
  
  it "modifier should be negative" do
    @ability.value = 9
    @ability.modifier.should == -1
  end
  
  it "should respond to total_value" do
  	@ability.total_value.should == 10
  end
  
	it "should have many effectables" do
		should have_many(:effectable)
	end
	
	it "should have many effects though effectables" do
		should have_many(:effect).through(:effectable)
	end
  
  describe " # Effects" do
    before(:each) do 
    	@effect = Effect.create(:name => :some_name, :target_klass => "Ability", :target_instance => "Strength", :value => 1 )
    end
    it "should be added when an ability effectable is created" do 
    	@ability.character.add_effect(@effect)
    	@ability.effect.count.should == 1
    end
    
    it "values should be accessable" do
      @ability.character.add_effect(@effect)
      @ability.effect.first.name.should == "some_name"
    end
    
    it "should be unique" do 
    	@ability.character.add_effect(@effect)
    	@ability.effect.count.should == 1
      @ability.character.add_effect(@effect)
      @ability.effect.count.should == 1
    end
    
    it "Effects should be removed when the assocaited effectable is removed." do
      @ability.character.add_effect(@effect) 
      @ability.effectable.first.delete
      @ability.effect.count.should == 0
    end
    
    it "should update total value" do 
    	@ability.character.add_effect(@effect)
      @ability.total_value.should == 11
    end
    
  end
  
end
