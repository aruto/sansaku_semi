json.array!(@my_maps) do |my_map|
  json.extract! my_map, :member_id
  json.url my_map_url(my_map, format: :json)
end
