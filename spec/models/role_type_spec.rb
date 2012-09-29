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
  
  it "should have a valid category" do
   should respond_to(:category)
  end
  
  it "should have a valid alignment" do
   should respond_to(:alignment)
  end
  
  it "should have a valid hit_die" do
   should respond_to(:hit_die)
  end
  
  it "should have a valid role_skills" do
   should respond_to(:role_skills)
  end
  
  it "should have a valid skill_points" do
   should respond_to(:skill_points)
  end
  
  it "should have a valid skill_points_ability" do
   should respond_to(:skill_points_ability)
  end
  
  it "should have a valid spell_stat" do
   should respond_to(:spell_stat)
  end
  
  it "should have a valid proficiencies" do
   should respond_to(:proficiencies)
  end
  
  it "should have a valid caster_type" do
   should respond_to(:caster_type)
  end
  
  it "should have a valid epic_feat_base_level" do
   should respond_to(:epic_feat_base_level)
  end
  
  it "should have a valid epic_feat_interval" do
   should respond_to(:epic_feat_interval)
  end
  
  it "should have a valid epic_feat_list" do
   should respond_to(:epic_feat_list)
  end
  
  it "should have a valid epic_full_text" do
   should respond_to(:epic_full_text)
  end
  
  it "should have a valid req_race" do
   should respond_to(:req_race)
  end
  
  it "should have a valid req_weapon_proficiency" do
   should respond_to(:req_weapon_proficiency)
  end
  
  it "should have a valid req_base_attack_bonus" do
   should respond_to(:req_base_attack_bonus)
  end
  
  it "should have a valid req_skill" do
   should respond_to(:req_skill)
  end
  
  it "should have a valid req_feat" do
   should respond_to(:req_feat)
  end
  
  it "should have a valid req_spells" do
   should respond_to(:req_spells)
  end
  
  it "should have a valid req_languages" do
   should respond_to(:req_languages)
  end
  
  it "should have a valid req_psionics" do
   should respond_to(:req_psionics)
  end
  
  it "should have a valid req_epic_feat" do
   should respond_to(:req_epic_feat)
  end
  
  it "should have a valid req_special" do
   should respond_to(:req_special)
  end
  
  it "should have a valid spell_list_1" do
   should respond_to(:spell_list_1)
  end
  
  it "should have a valid spell_list_2" do
   should respond_to(:spell_list_2)
  end
  
  it "should have a valid spell_list_3" do
   should respond_to(:spell_list_3)
  end
  
  it "should have a valid spell_list_4" do
   should respond_to(:spell_list_4)
  end
  
  it "should have a valid spell_list_5" do
   should respond_to(:spell_list_5)
  end
  
  it "should have a valid full_text" do
   should respond_to(:full_text)
  end
  
  it "should have a valid reference" do
   should respond_to(:reference)
  end

end
