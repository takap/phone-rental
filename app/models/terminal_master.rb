class TerminalMaster < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :maker
  belongs_to :series
  belongs_to :model
  belongs_to :default_os, class_name: 'OperatingSystem', foreign_key: 'default_os_id', validate: true
  belongs_to :screen_inch
  belongs_to :screen_width
  belongs_to :screen_height
  belongs_to :screen_density
end
