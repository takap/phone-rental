class Check
  include ActiveModel::Model
  attr_accessor :terminal_id, :user_id, :operator_id, :status, :take_out, :note, :due_date
end
