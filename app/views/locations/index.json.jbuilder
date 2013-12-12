json.array!(@locations) do |location|
  json.extract! location, :latitude, :longitude, :altitude, :accuracy, :altitude_accuracy, :heading, :speed, :error_code, :timestamp, :member
  json.url location_url(location, format: :json)
end
