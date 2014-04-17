class CreateCheckEvents < ActiveRecord::Migration
  def change
    create_table :check_events do |t|
      t.references :terminal, index: true
      t.references :user, index: true
      t.references :operator, index: true
      t.string :status
      t.integer :take_out
      t.string :note
      t.date :due_date

      t.timestamps
    end
  end
end
