class TerminalMaster < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :maker
  belongs_to :series
  belongs_to :model
  belongs_to :default_os
  belongs_to :screen_inch
  belongs_to :screen_width
  belongs_to :screen_height
  belongs_to :screen_density
end
