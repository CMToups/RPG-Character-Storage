class Achievement < ActiveRecord::Base
	belongs_to :character
	belongs_to :feat
end
