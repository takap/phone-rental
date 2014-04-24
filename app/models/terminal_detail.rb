class TerminalDetail
  include ActiveModel::Model
  attr_accessor :terminal_id,
                :terminal_name,
                :terminal_master_id,
                :volume,
                :phone_number,
                :sim,
                :wifi,
                :carrier_id,
                :maker_id,
                :category_id,
                :group_id,
                :model_name,
                :default_os,
                :updated_os,
                :screen_inch,
                :screen_width,
                :screen_height,
                :screen_density_id,
                :screen_density,
                :color,
                :release_date,
                :tablet,
                :nfc,
                :note,
                :carrier_name,
                :maker_name,
                :group_name,
                :status
end