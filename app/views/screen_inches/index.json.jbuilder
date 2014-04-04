json.array!(@screen_inches) do |screen_inch|
  json.extract! screen_inch, :id, :size
  json.url screen_inch_url(screen_inch, format: :json)
end
