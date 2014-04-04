json.array!(@makers) do |maker|
  json.extract! maker, :id, :name, :name_kana
  json.url maker_url(maker, format: :json)
end
