require 'spec_helper'

describe Character do
  before(:each) do
    @character = Character.new
  end
  
  it "should save with valid attributes" do
    @character.save.should == true
  end
  
  it "can have abilities" do
    @character.should respond_to(:ability)
    @character.ability.build(:name => :Strangth)
    @character.save.should == true
  end
  
  it "should have all six ablitites" do

    names = []
    
    @character.ability.each do |ability|
      names << ability.name
    end
    
    names.should == [:Strangth, :Dexterity, :Constitution, :Intelligence, :Wisdom, :Charisma]
  end
  
  it "should not have two of the same ablities" do
    @character.save
    @character.ability.create(:name => :Strangth)
    @character.ability.count.should == 6
  end
  
end
