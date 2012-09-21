class Feat < ActiveRecord::Base

	has_many :achievement
  has_many :character, :through => :achievement
	has_and_belongs_to_many :role_type
end
