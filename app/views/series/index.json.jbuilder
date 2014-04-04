json.array!(@series) do |series|
  json.extract! series, :id, :name, :name_kana
  json.url series_url(series, format: :json)
end
