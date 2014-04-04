class Terminal < ActiveRecord::Base
  belongs_to :terminal_master
  belongs_to :color
  belongs_to :updated_os
  belongs_to :place
end
