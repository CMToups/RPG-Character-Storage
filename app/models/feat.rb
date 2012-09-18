class Feat < ActiveRecord::Base
  has_and_belongs_to_many :character
	has_and_belongs_to_many :role_type
end
