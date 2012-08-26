require 'spec_helper'

describe Background do

  it "should belong to a character" do
   should belong_to(:character) 
 end
 
  it "can have a history" do
   should allow_value("some history").for(:history) 
 end
 
  it "can have a homeland" do
   should allow_value("some homeland").for(:homeland) 
 end
 
end
