json.array!(@screen_densities) do |screen_density|
  json.extract! screen_density, :id, :size
  json.url screen_density_url(screen_density, format: :json)
end
