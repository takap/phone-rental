class CheckState < ActiveRecord::Base
  belongs_to :terminal
  belongs_to :user
end
