class Terminal < ActiveRecord::Base
  belongs_to :terminal_master
  belongs_to :color
  belongs_to :updated_os, class_name: 'OperatingSystem', foreign_key: 'updated_os_id', validate: true
  belongs_to :place
end
