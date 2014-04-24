class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :name
      t.references :terminal_master, index: true
      t.integer :volume
      t.string :color
      t.string :phone_number
      t.string :updated_os
      t.integer :wifi

      t.timestamps
    end
  end
end
