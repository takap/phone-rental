json.array!(@carriers) do |carrier|
  json.extract! carrier, :id, :name, :name_kana
  json.url carrier_url(carrier, format: :json)
end
