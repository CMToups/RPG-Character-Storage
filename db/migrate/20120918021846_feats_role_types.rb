class FeatsRoleTypes < ActiveRecord::Migration
  def change
  	create_table :feats_role_types, :id => false do |t|
		  t.references :feat, :null => false
		  t.references :role_type, :null => false
	  end
	  
	  add_index(:feats_role_types, [:feat_id, :role_type_id])
  end
end
