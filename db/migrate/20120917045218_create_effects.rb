class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.string :name
      t.string :applies_to_klass
      t.string :applies_to_instance

      t.timestamps
    end
  end
end
