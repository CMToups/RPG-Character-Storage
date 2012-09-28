require 'spec_helper'

describe SkillType do
  it "should have many skills" do
    should have_many(:skill)
  end
  
  it "should have valid name" do
    should allow_value("climb").for(:name) 
  end

   it "should have valid subtype" do
    should allow_value("one,two,three").for(:subtype)
  end
  
   it "should have valid ability_type" do
    should allow_value(:Strength).for(:ability_type) 
  end
  
  it "should have valid psionic" do
    should allow_value(true).for(:psionic) 
  end
  
  it "should have valid trained" do
    should allow_value(true).for(:trained) 
  end
  
  it "should have valid armor_check" do
    should allow_value(true).for(:armor_check) 
  end
  
  it "should have valid description" do
    should allow_value("foo bar more text bar foo more text").for(:description) 
  end
  
  it "should have valid skill_check" do
    should allow_value("foo bar more text bar foo more text").for(:skill_check) 
  end
  
  it "should have valid action" do
    should allow_value("foo bar more text bar foo more text").for(:action) 
  end
  
  it "should have valid try_again" do
    should allow_value("foo bar more text bar foo more text").for(:try_again) 
  end
  
  it "should have valid special" do
    should allow_value("foo bar more text bar foo more text").for(:special) 
  end
  
  it "should have valid restriction" do
    should allow_value("foo bar more text bar foo more text").for(:restriction) 
  end
  
  it "should have valid synergy" do
    should allow_value("foo bar more text bar foo more text").for(:synergy) 
  end
  
  it "should have valid epic_use" do
    should allow_value("foo bar more text bar foo more text").for(:epic_use) 
  end
  
  it "should have valid untrained" do
    should allow_value("foo bar more text bar foo more text").for(:untrained) 
  end
  
  it "should have valid full_text" do
    should allow_value("foo bar more text bar foo more text").for(:full_text) 
  end
  
  it "should have valid reference" do
    should allow_value("reference").for(:reference) 
  end
  
end
