class Effect < ActiveRecord::Base
	belongs_to :effector, :polymorphic => true
	has_many :effectable, :dependent => :destroy
end
