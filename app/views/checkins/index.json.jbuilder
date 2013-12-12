json.array!(@checkins) do |checkin|
  json.extract! checkin, :member_id, :place_id
  json.url checkin_url(checkin, format: :json)
end
