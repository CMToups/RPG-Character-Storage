class Possession < ActiveRecord::Base
	acts_as_citier
	
	has_and_belongs_to_many :character
	has_many :effect, :as => :effector, :dependent => :destroy
	
end
