require 'spec_helper'

describe RoleType do

  it "should have many roles" do 
     should have_many(:role).dependent(:destroy)
  end   
  
  it "should have many effects" do 
     should have_many(:effect).dependent(:destroy)
  end   
  
  it "should have and belong to many skills" do 
     should have_and_belong_to_many(:skill)
  end   

  it "should have and belong to many feats" do 
     should have_and_belong_to_many(:feat)
  end     
  
  it "features should be an alias for effects" do 
  	role_type = RoleType.new
  	role_type.features.should == role_type.effect
  end
  
  it "should have a valid name" do
   should respond_to(:name)
  end
  
  it "should have a valid description" do 
     should respond_to(:description)
  end 

  it "should have a valid alignment" do 
     should respond_to(:alignment)
  end 
  
  it "should have a valid hit_die" do 
     should respond_to(:hit_die)
  end
  
  it "should have a valid skill ranks per level" do 
     should respond_to(:skill_rank_per_level)
  end
  
  it "should have a valid spells per day" do 
     should respond_to(:spells_per_day)
  end   

end
