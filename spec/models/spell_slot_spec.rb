require 'spec_helper'

describe SpellSlot do
  it "should belong to a character" do 
  	should belong_to(:character)
  end 
  
  it "should belong to a spell" do 
  	should belong_to(:spell)
  end
end
