class Possession < ActiveRecord::Base
	acts_as_citier
	
	has_and_belongs_to_many :character
	
end
