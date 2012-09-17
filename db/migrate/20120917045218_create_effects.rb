class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.string :name
      t.string :target_klass
      t.string :target_instance
      t.integer :value
      
      t.integer :effector_id
      t.string 	:effector_type
      
      t.timestamps
    end
  end
end
