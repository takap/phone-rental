class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :name_kana

      t.timestamps
    end
  end
end
