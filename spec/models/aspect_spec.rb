require 'spec_helper'

describe Aspect do
  
  it "should belong to a character" do
   should belong_to(:character) 
 end
 
  it "should have valid size" do
   should allow_value(60).for(:size) 
 end

  it "should have valid gender" do
   should allow_value("hermaphodrite").for(:gender) 
 end
 
  it "should have valid age" do
   should allow_value(657).for(:age) 
 end
 
  it "should have valid height" do
   should allow_value(77).for(:height) 
 end
 
  it "should have valid weight" do
   should allow_value(500).for(:weight) 
 end
 
  it "should have valid hair" do
   should allow_value("lavender").for(:hair) 
 end
 
  it "should have valid eye" do
   should allow_value("silver").for(:eye) 
 end
 
  it "should have valid alignment" do
   should allow_value("Chaotic Good").for(:alignment) 
 end
 
  it "should have valid deity" do
   should allow_value("The Flying Spaghetti Monster").for(:deity) 
 end

end
