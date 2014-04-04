class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name
      t.string :name_kana

      t.timestamps
    end
  end
end
