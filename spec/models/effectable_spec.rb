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
end
