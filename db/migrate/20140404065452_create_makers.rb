class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :name
      t.string :name_kana

      t.timestamps
    end
  end
end
