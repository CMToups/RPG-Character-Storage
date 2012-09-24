class Possession < ActiveRecord::Base
	
	has_and_belongs_to_many :character
	has_many :effect, :as => :effector, :dependent => :destroy
	
end
