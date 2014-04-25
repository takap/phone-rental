json.array!(@terminal_masters) do |terminal_master|
  json.extract! terminal_master, :id, :carrier_id, :maker_id, :series_id, :model_name, :default_os, :screen_inch_id, :screen_width_id, :screen_height_id, :screen_density_id, :release_date, :tablet, :nfc
  json.url terminal_master_url(terminal_master, format: :json)
end
