require 'spec_helper'

describe Ability do

  it "should have a valid name" do
    strangth = Ability.create(:name => :Strangth)
    strangth.should be_valid
  end
  
  it "should not have an invalid name" do
    strangth = Ability.create(:name => :bad_name)
    strangth.should_not be_valid
  end
  
end
