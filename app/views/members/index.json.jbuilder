json.array!(@members) do |member|
  json.extract! member, :user, :hashed_password, :administrator
  json.url member_url(member, format: :json)
end
