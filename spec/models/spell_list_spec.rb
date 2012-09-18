require 'spec_helper'

describe SpellList do
  
  it "should belong to a character" do 
  	should belong_to(:character)
  end
  
  it "should have and belong to many spell types" do 
  	should have_and_belong_to_many(:spell_type)
  end

end
