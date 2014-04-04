class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :name
      t.references :terminal_master, index: true
      t.integer :volume
      t.references :color, index: true
      t.string :phone_number
      t.references :updated_os, index: true
      t.references :place, index: true
      t.integer :wifi

      t.timestamps
    end
  end
end
