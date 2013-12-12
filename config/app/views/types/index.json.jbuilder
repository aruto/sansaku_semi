json.array!(@types) do |type|
  json.extract! type, :name, :icon
  json.url type_url(type, format: :json)
end
