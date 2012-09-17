class Effect < ActiveRecord::Base
	belongs_to :effectable, :polymorphic => true
end
