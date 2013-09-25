json.array!(@places) do |place|
  json.extract! place, :name, :category_id, :lat, :lng, :description, :type
  json.url place_url(place, format: :json)
end
