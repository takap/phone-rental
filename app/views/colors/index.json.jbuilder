json.array!(@colors) do |color|
  json.extract! color, :id, :name, :hex
  json.url color_url(color, format: :json)
end
