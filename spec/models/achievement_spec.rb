require 'spec_helper'

describe Achievement do
 
 it "should belong to characters" do 
 	should belong_to(:character)
 end
 
 it "should belong to feats" do 
 	should belong_to(:feat)
 end
 
end
