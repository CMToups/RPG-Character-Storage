class Feat < ActiveRecord::Base
  belongs_to :character
  belongs_to :feat_type
  
  accepts_nested_attributes_for :feat_type

end
