class Check
  include ActiveModel::Model
  attr_accessor :id, :terminal_id, :user_id, :operator_id, :status, :take_out, :note, :due_date, :created_at, :updated_at
end
