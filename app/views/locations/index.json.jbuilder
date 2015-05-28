json.array!(@locations) do |location|
  json.extract! location, :id, :address, :latitude, :longtitude
  json.url location_url(location, format: :json)
end
