class Role < ActiveRecord::Base
	belongs_to :character
	belongs_to :role_type
end
