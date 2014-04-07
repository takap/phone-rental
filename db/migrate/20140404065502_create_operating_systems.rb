class CreateOperatingSystems < ActiveRecord::Migration
  def change
    create_table :operating_systems do |t|
      t.string :version_name
      t.integer :api_level
      t.string :code_name

      t.timestamps
    end
  end
end
