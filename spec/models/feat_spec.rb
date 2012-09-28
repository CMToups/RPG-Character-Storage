require 'spec_helper'

describe Feat do
	
	it "should have many achievements" do 
		should have_many(:achievement)
	end

  it "should have many characters through achievements" do
     should have_many(:character).through(:achievement)
  end
  
  it "should have and belong to many role_types" do 
     should have_and_belong_to_many(:role_type)
  end  
  
   it "should have valid name" do
    should allow_value("Power Overwhelming").for(:name) 
  end

   it "should have valid feat_type" do
    should allow_value("this is a feat").for(:feat_type)
  end

   it "should have valid multiple" do
    should allow_value(true).for(:multiple)
  end

   it "should have valid stack" do
    should allow_value(true).for(:stack)
  end

   it "should have valid choice" do
    should allow_value("this is a feat").for(:choice)
  end

   it "should have valid prerequisite" do
    should allow_value("this is a feat").for(:prerequisite)
  end

   it "should have valid benefit" do
    should allow_value("this is a feat").for(:benefit)
  end

   it "should have valid normal" do
    should allow_value("this is a feat").for(:normal)
  end

   it "should have valid special" do
    should allow_value("this is a feat").for(:special)
  end

   it "should have valid full_text" do
    should allow_value("this is a feat").for(:full_text)
  end

   it "should have valid reference" do
    should allow_value("this is a feat").for(:reference)
  end
  
end
