class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :name
      t.references :terminal_master, index: true
      t.integer :volume
      t.string :color
      t.string :updated_os
      t.string :phone_number
      t.integer :sim
      t.integer :wifi
      t.string :note

      t.timestamps
    end
  end
end
