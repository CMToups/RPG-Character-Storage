require 'spec_helper'

describe Character do
  
  before(:each) do
    @character = Character.new(:name => :some_name)
  end
  
  it "should have a name" do
    should validate_presence_of(:name)
  end
  
  it "should have valid experience points" do
    should validate_numericality_of(:experience_points)
  end
  
  it "should have valid total hit points" do
    should validate_numericality_of(:total_hit_points)
  end
  
  it "should have valid money" do
    should validate_numericality_of(:money)
  end
  
  it "should save with valid attributes" do
    @character.save.should == true
  end
  
  it "should have a default experience points" do
    @character.save
    @character.experience_points.should == 0
  end
  
  it "should have a default total hit points" do
    @character.save
    @character.total_hit_points.should == 0
  end
  
  it "should have a default money" do
    @character.save
    @character.money.should == 0
  end
  
#player
  it "should belong to a player" do
     should belong_to(:player)
   end

#race   
  it "should belong to a race" do
    should belong_to(:race)
  end
  
  it "should be able to identify its race"  do 
  	@character.save
  	@character.race = Race.create(:name => :elf)
  	@character.race.name.should == :elf
  end
  
  it "should be able to access racial effects" do 
  	race = Race.create 
  	race.effect.create(:name => :some_effect, :target_klass => :Ability, :target_instance => :Strength)
  	@character.race = race
  	@character.save
  	@character.race.effect.first.name.should == "some_effect"
  end
  
#aspect  
  it "should have one aspect and be destroy dependent" do
    should have_one(:aspect).dependent(:destroy)
  end

  it "should accept nested attributes for aspect" do
    should accept_nested_attributes_for :aspect
  end
  
  it "should trully accept nested attributes for aspect" do 
  	#rails c was not showing a proper update -- don't forget to save! keep test as a backup...
  	@character.aspect = Aspect.create(:deity => :KeaDe)
  	@character.aspect.deity.should == :KeaDe
  	@character.aspect.deity = :Keade
  	@character.aspect.deity.should == :Keade
  end

  it "should have an aspect when saved" do
    @character.save
    @character.aspect.should == Aspect.where(:id => 1).first
  end

#background
  it "should have one background and be destroy dependent" do
    should have_one(:background).dependent(:destroy)
  end
  
  it "should accept nested attributes for backgound" do
    should accept_nested_attributes_for :background
  end
  
  it "should have a background when saved" do
    @character.save
    @character.background.should == Background.where(:id => 1).first
  end
  
#ability
  it "should have many abilities and be destroy dependent" do
    should have_many(:ability).dependent(:destroy) 
  end
  
  it "should accept nested attributes for ability" do
    should accept_nested_attributes_for :ability
  end

  it "can have abilities" do
    @character.should respond_to(:ability)
    @character.ability.build(:name => "Strength")
    @character.save.should == true
  end
  
   it "abilities should save with character save" do
    @character.save
    Ability.where(:character_id => @character).first.should_not == nil
  end
  
  it "should have all six ablitites" do
    @character.save

    names = []

    @character.ability.each do |ability|
      names << ability.name
    end

    names.should == ["Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma"]
  end

  it "should not have two of the same abilities" do
    @character.save
    @character.ability.create(:name => :Strength)
    @character.ability.count.should == 6
  end
  
  it "should be able to access an ability's total value" do
    @character.save
    str = @character.ability.where(:name => :Strength).first
    str.total_value.should == 10
  end

  it "should be able to update abilities" do 
  	@character.save
    str = @character.ability.where(:name => "Strength").first
    str.value = 12
    str.save
    @character.ability.where(:name => "Strength").first.value.should == 12
  end
#feat
	
	it "should have many achievements" do 
		should have_many(:achievement)
	end
	
  it "should have many feats through achievements" do
     should have_many(:feat).through(:achievement)
  end
  
  it "should accept nested attributes for feat" do
    should accept_nested_attributes_for(:feat)
  end
  
  it "Character.feat << feat.create should work" do 
  	feat = Feat.create()
  	@character.feat << feat
  	@character.save!
  	@character.feat.count.should == 1
  end
  
#skill & skill_type
  it "should have many skills and be destroy dependent" do
     should have_many(:skill).dependent(:destroy) 
  end
  
  it "should accept nested attributes for skill" do
    should accept_nested_attributes_for(:skill)
  end
  
  it "should have many skill types through skill" do
      should have_many(:skill_type).through(:skill)
  end
  
  it "should only have one kind of skill, skill_type must be unique" do 
  	@character.save
  	SkillType.create(:name => :climb, :description => "How one climbs", :ability_type => :Strenght) 
  	@character.skill.create(:skill_type_id => SkillType.first.id) 
  	@character.skill.count.should == 1
  	@character.skill.create(:skill_type_id => SkillType.first.id) 
  	@character.save 
  	@character.skill.count.should == 1
  end
  
#role  
  it "should have many roles and be destroy dependent" do
     should have_many(:role).dependent(:destroy)
  end
  
  it "should have many role types through rolees" do 
		should have_many(:role_type).through(:role) 
  end
  
  it "should be able to add a role to self" do 
	  @character.save
  	role_type = RoleType.create
  	@character.role.create(:role_type_id => role_type)
  	@character.role.first.should == Role.where(:role_type_id => role_type).first
  end

#possesion  
  it "should have and belong to many possessions and be destroy dependent" do
     should have_and_belong_to_many(:possession) 
  end

#spell  
  it "should have many spell slots and be destroy dependent" do
     should have_many(:spell_slot).dependent(:destroy) 
  end
  
  it "should have many spells through spell slots" do
     should have_many(:spell).through(:spell_slot) 
  end


#effects

	it "should have_may effectable" do 
		should have_many(:effectable)
	end
	
	it "should have_may effects through effectable" do 
		should have_many(:effect).through(:effectable)
	end
	
	it "should be able to retreave effects" do 
		race = Race.create
		race.effect.create(:target_klass => :Ability, :target_instance => :Strength)
		@character.race = race  
		@character.effect.first.should == Effect.find(@character.race.effect.first.id)
	end
	
	it "should be able to identify an effect's target" do 
		 @character.race = Race.create 
		 @character.race.effect.create(:target_klass => :Ability, :target_instance => :Strength)
		 @character.save 
		 klass = @character.race.effect.first.target_klass
		 instance = @character.race.effect.first.target_instance
		 klass.should == :Ability
		 instance.should == :Strength
	end
	
	it "should be able to send an effect to its target" do 
		@character.save 
		effect = Effect.create(:name => "some_effect", :target_klass => :Ability, :target_instance => :Strength, :value => 1)
		@character.add_effect(effect)
		@character.ability.where(:name => :Strength).first.total_value.should == 11
	end
	
	it "a race should be able to update abilities through a character" do 
		race = Race.create(:name => :Elf)
		race.effect << Effect.create(:name => "Racial Dex +2", :target_klass => :Ability, :target_instance => :Dexterity, :value => 2)
		race.effect << Effect.create(:name => "Racial Int +2", :target_klass => :Ability, :target_instance => :Intelligence, :value => 2) 
		@character.race = race
		@character.ability.where(:name => :Dexterity).first.total_value.should == 12
		@character.ability.where(:name => :Intelligence).first.total_value.should == 12
	end
	
	it "a role should be able to update abilities through a character" do 
		@character.save
		role_type = RoleType.create(:name => :Barbarian)
		role_type.effect << Effect.create(:name => "Class Dex +2", :target_klass => :Ability, :target_instance => :Dexterity, :value => 2)
		role_type.effect << Effect.create(:name => "Class Int +2", :target_klass => :Ability, :target_instance => :Intelligence, :value => 2) 
		@character.role.create(:role_type => role_type)
		@character.ability.where(:name => :Dexterity).first.total_value.should == 12
		@character.ability.where(:name => :Intelligence).first.total_value.should == 12
	end
	
	it "add effect should add character id to the effectable table" do 
			@character.save 
		effect = Effect.create(:name => "some_effect", :target_klass => :Ability, :target_instance => :Strength, :value => 1)
		@character.add_effect(effect)
		@character.ability.where(:name => :Strength).first.total_value.should == 11
		Effectable.where(:character_id => @character.id).first.effect.should == effect
	end
	
	it "should be able to get a list of all effects tied to a character" do
		@character.save 
		race_effect = Effect.create(:name => "Racial Dex +2", :target_klass => :Ability, :target_instance => :Dexterity, :value => 2)
		role_effect = Effect.create(:name => "Class Dex +2", :target_klass => :Ability, :target_instance => :Dexterity, :value => 2)
		race = Race.create(:name => :Elf)
		race.effect << race_effect
		@character.race = race
		
		role_type = RoleType.create(:name => :Barbarian)
		role_type.effect << role_effect
		@character.role.create(:role_type => role_type)
		
		@character.save 
		
		@character.ability.where(:name => :Dexterity).first.total_value.should == 14
		@character.effect.should == [race_effect,role_effect]
	end
	
	it "should only have one copy of an effect" do 
		@character.save
		role_type = RoleType.create(:name => :Barbarian)
		role_type.effect << Effect.create(:name => "Class Dex +2", :target_klass => :Ability, :target_instance => :Dexterity, :value => 2) 
		@character.role.create(:role_type => role_type)
		@character.ability.where(:name => :Dexterity).first.total_value.should == 12
		@character.role.first.save
		@character.ability.where(:name => :Dexterity).first.total_value.should == 12
	end
	
end
