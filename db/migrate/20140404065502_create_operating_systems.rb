class CreateOperatingSystems < ActiveRecord::Migration
  def change
    create_table :operating_systems do |t|
      t.string :version_name
      t.integer :version_code

      t.timestamps
    end
  end
end
