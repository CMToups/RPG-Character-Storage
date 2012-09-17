class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.string :name
      t.string :applies_to_klass
      t.string :applies_to_instance
      
      t.integer :effectable_id
      t.string 	:effectable_type

      t.timestamps
    end
  end
end
