require 'spec_helper'

describe Feat do

 it "should belong to a character" do
   should belong_to(:character)
 end
 
 it "should belong to a feat type" do
   should belong_to(:feat_type)
 end
 
 it "should accept nested attributes for feat type" do
   should accept_nested_attributes_for(:feat_type)
 end
  
end
