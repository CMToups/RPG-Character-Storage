class Skill < ActiveRecord::Base
  belongs_to :character
  belongs_to :skill_type
	has_and_belongs_to_many :role_type
  accepts_nested_attributes_for :skill_type
  
end
