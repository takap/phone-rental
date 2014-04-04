json.array!(@screen_heights) do |screen_height|
  json.extract! screen_height, :id, :size
  json.url screen_height_url(screen_height, format: :json)
end
