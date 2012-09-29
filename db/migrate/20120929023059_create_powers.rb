class CreatePowers < ActiveRecord::Migration
  def change
    create_table :powers do |t|
      t.string :name
      t.string :discipline
      t.string :subdiscipline
      t.string :descriptor
      t.string :level
      t.string :display
      t.string :manifesting_time
      t.string :power_range
      t.string :power_target
      t.string :area
      t.string :result
      t.string :duration
      t.string :saving_throw
      t.string :power_points
      t.string :power_resistance
      t.text :short_description
      t.text :xp_cost
      t.text :description
      t.text :augment
      t.text :full_text
      t.string :reference

      t.timestamps
    end
  end
end
