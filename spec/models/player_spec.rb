require 'spec_helper'

describe Player do
  it "should have many characters" do 
  	should have_many(:character)
  end
end
