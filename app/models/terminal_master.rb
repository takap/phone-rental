class TerminalMaster < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :maker
  belongs_to :group
  belongs_to :screen_density
end
