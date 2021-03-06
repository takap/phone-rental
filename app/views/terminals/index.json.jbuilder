json.array!(@terminals) do |terminal|
  json.extract! terminal, :id, :name, :terminal_master_id, :volume, :color, :phone_number, :updated_os, :wifi
  json.url terminal_url(terminal, format: :json)
end
