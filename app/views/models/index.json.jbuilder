json.array!(@models) do |model|
  json.extract! model, :id, :name, :name_kana
  json.url model_url(model, format: :json)
end
