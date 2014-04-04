class CreateTerminalMasters < ActiveRecord::Migration
  def change
    create_table :terminal_masters do |t|
      t.references :carrier, index: true
      t.references :maker, index: true
      t.references :series, index: true
      t.references :model, index: true
      t.references :default_os, index: true
      t.references :screen_inch, index: true
      t.references :screen_width, index: true
      t.references :screen_height, index: true
      t.references :screen_density, index: true
      t.date :release_date
      t.integer :tablet
      t.integer :nfc

      t.timestamps
    end
  end
end
