class CreateScreenDensities < ActiveRecord::Migration
  def change
    create_table :screen_densities do |t|
      t.string :size

      t.timestamps
    end
  end
end
