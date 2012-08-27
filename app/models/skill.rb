class Skill < ActiveRecord::Base
  belongs_to :character
  belongs_to :skill_type
  
  accepts_nested_attributes_for :skill_type
  
end
