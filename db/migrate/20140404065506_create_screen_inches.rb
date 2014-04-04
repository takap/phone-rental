class CreateScreenInches < ActiveRecord::Migration
  def change
    create_table :screen_inches do |t|
      t.float :size

      t.timestamps
    end
  end
end
