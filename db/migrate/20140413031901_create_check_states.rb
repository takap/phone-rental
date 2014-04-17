class CreateCheckStates < ActiveRecord::Migration
  def change
    create_table :check_states do |t|
      t.references :terminal, index: true
      t.references :user, index: true
      t.string :status
      t.integer :take_out
      t.string :note
      t.date :due_date

      t.timestamps
    end
  end
end
