class Race < ActiveRecord::Base
	has_many :character
	has_many :effect, :as => :effector, :dependent => :destroy #are you sure?
	
	accepts_nested_attributes_for :effect
end
