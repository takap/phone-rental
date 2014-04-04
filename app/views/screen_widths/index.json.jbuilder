json.array!(@screen_widths) do |screen_width|
  json.extract! screen_width, :id, :size
  json.url screen_width_url(screen_width, format: :json)
end
