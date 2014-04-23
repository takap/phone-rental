class CreateTerminalMasters < ActiveRecord::Migration
  def change
    create_table :terminal_masters do |t|
      t.references :carrier, index: true
      t.references :maker, index: true
      t.references :category, index: true
      t.references :group, index: true
      t.string :model_name
      t.string :default_os
      t.float :screen_inch
      t.integer :screen_width
      t.integer :screen_height
      t.references :screen_density, index: true
      t.date :release_date
      t.integer :tablet
      t.integer :nfc

      t.timestamps
    end
  end
end
