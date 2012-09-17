class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.integer :speed
      t.string :vision

      t.timestamps
    end
  end
end
