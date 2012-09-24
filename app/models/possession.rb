class Possession < ActiveRecord::Base
	
	has_and_belongs_to_many :character
	has_many :effect, :as => :effector, :dependent => :destroy
	
	attr_protected
	#:name, :type, :construction_cost, :construction_requirements, :construction_caster_level, :weight, :description, :monetary_value, :armor_check_penalty, :category, created_at, critical_damage, critical_range, damage, id, lethal, magic_value, magical_name, maximum_dexterity_value, range, slot, speed_limitation, spell_failure, updated_at, weapon_type
end
