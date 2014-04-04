class CreateScreenWidths < ActiveRecord::Migration
  def change
    create_table :screen_widths do |t|
      t.integer :size

      t.timestamps
    end
  end
end
