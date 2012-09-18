class RoleTypesSkills < ActiveRecord::Migration
	def change
		create_table :role_types_skills, :id => false do |t|
		  t.references :role_type, :null => false
		  t.references :skill, :null => false
		end

		add_index(:role_types_skills, [:role_type_id, :skill_id])
	end
end
