require 'spec_helper'

describe Skill do
  before(:each) do 
  	@skill = Skill.create(
  		:character_id => Character.create(:name => :some_name), 
  		:skill_type => SkillType.create(:name => :climb, :ability_type => "Strength"))
  end
  
  it "should belong to a character" do
    should belong_to(:character)
  end

  it "should belong to a skill type" do
    should belong_to(:skill_type)
  end

  it "should accept nested attributes for skill type" do
    should accept_nested_attributes_for(:skill_type)
  end

  it "should have and belong to many role_types" do 
     should have_and_belong_to_many(:role_type)
  end
  
  it "should have many effectables" do 
  	should have_many(:effectable)
  end
  
  it "should have many effects through effectables" do
  	should have_many(:effectable).through(:effect)
  end
  
  it "should not save without a character" do 
    Skill.new(:skill_type => SkillType.create).should_not be_valid
  end
  
  it "should not save without a skill type" do
  	Skill.new(:character => Character.create(:name => :some_name)).should_not be_valid
  end
  
  it "should have valid rank" do
    should allow_value(4).for(:rank)
  end

   it "should have valid total" do
    @skill.rank = 1
    @skill.save
    Skill.first.total.should == 1
  end
  
	it "should update total with its character's ability modifier" do
   	@skill.rank = 1
    @skill.save
    Skill.first.total.should == 1
    str = @skill.character.ability.where(:name => :Strength).first
    str.value = 12
    str.save
    @skill.character.ability.where(:name => :Strength).first.value.should == 12
    Skill.first.total.should == 2
  end  

  describe " # Effects" do
    before(:each) do 
    	@effect = Effect.create(:name => :some_name, :target_klass => "Skill", :target_instance => "climb", :value => 1 )
    end
    it "should be added when an skill effectable is created" do 
    	@skill.character.add_effect(@effect)
    	@skill.effect.count.should == 1
    end
    
    it "values should be accessable" do
      @skill.character.add_effect(@effect)
      @skill.effect.first.name.should == "some_name"
    end
    
    it "should be unique" do 
    	@skill.character.add_effect(@effect)
    	@skill.effect.count.should == 1
      @skill.character.add_effect(@effect)
      @skill.effect.count.should == 1
    end
    
    it "should be removed when the assocaited effectable is removed." do
      @skill.character.add_effect(@effect) 
      @skill.effectable.first.delete
      @skill.effect.count.should == 0
    end
    
    it "should update total" do 
    	@skill.character.add_effect(@effect)
      @skill.total_value.should == 11
    end
    
  end
  
end
