class CheckEvent < ActiveRecord::Base
  belongs_to :terminal
  belongs_to :user
  belongs_to :operator
end
