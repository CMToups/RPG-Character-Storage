require 'spec_helper'

describe Effectable do
  
  it "Should belong to an effect" do 
  	should belong_to :effect
	end
  
  it "should belong to an effectee" do 
  	should belong_to(:effectee)
  end
  
  it "should belong to a character" do 
  	should belong_to :character
  end
  
  it "should not valid without an effect" do 
  	Effectable.create(:effectee => Race.create, :character => Character.create(:name => :some_naem)).should_not be_valid
  end
  
  it "should not valid without an effectee" do 
  	Effectable.create(:effect => Effect.create, :character => Character.create(:name => :some_naem)).should_not be_valid
  end
  
  it "should not valid without an character" do 
  	Effectable.create(:effectee => Race.create, :effect => Effect.create).should_not be_valid
  end
end
