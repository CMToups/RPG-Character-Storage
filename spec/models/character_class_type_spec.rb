require 'spec_helper'

describe CharacterClassType do

	before(:each) do 
		@character_class_type = CharacterClassType.new
	end
  
  it "should have many characters" do 
		should have_many(:character)  
  end
  
  it "should have many a classes" do
  	should have_many(:character_class)
  end
  
  it "should have a valid description" do 
  	should respond_to(:description)
  end
  
  it "should have a valid alignment" do 
  	should respond_to(:alignment)
  end
  
  it "should have a valid hit die" do 
  	should respond_to(:hit_die)
  end
  
  it "should have valid skill ranks per level" do 
  	should respond_to(:skill_rank_per_level)
  end

  it "should have valid spells per day" do 
  	should respond_to(:spells_per_day)
  end
  
  it "should have and belong to many skills" do
  	should have_and_belong_to_many(:skill)
  end

  it "should have and belong to many feats" do
  	should have_and_belong_to_many(:feat)
  end
  
	it "should have many effects" do 
		should have_many(:effect).dependent(:destroy)
	end
	
	it "features should be an alias for effects" do 
		@character_class_type.feature.should == @character_class_type.effect
	end
    
end
