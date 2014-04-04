class CreateScreenHeights < ActiveRecord::Migration
  def change
    create_table :screen_heights do |t|
      t.integer :size

      t.timestamps
    end
  end
end
