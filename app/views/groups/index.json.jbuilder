json.array!(@groups) do |group|
  json.extract! group, :id, :name, :name_kana
  json.url group_url(group, format: :json)
end
