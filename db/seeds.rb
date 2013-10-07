# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Member.create(user: "青森太郎", password: "aomori", password_confirmation: "aomori", administrator: true)
Member.create(user: "黒石一郎", password: "aomori", password_confirmation: "aomori", administrator: false)
Member.create(user: "佐藤正太", password: "aomori", password_confirmation: "aomori", administrator: false)
Member.create(user: "鈴木浩紀", password: "aomori", password_confirmation: "aomori", administrator: false)
Member.create(user: "斎藤輝雄", password: "aomori", password_confirmation: "aomori", administrator: false)

Category.create(name: "喫茶")
Category.create(name: "焼き肉")
Category.create(name: "そば")
Category.create(name: "和食")
Category.create(name: "イタリアン")
Category.create(name: "スペイン料理")
Category.create(name: "アメリカ料理")
Category.create(name: "地中海料理")

Type.create(name: "お食事処", icon: "restaurant.png")
Type.create(name: "温泉", 	  icon: "spa.png")
Type.create(name: "旅館", 	  icon: "hotel.png")
Type.create(name: "お菓子",   icon: "sweets.png")

Initial.create(lat: 40.645427, lng: 140.59678, zoom: 16)

Place.create(name: "喫茶　しもん",		 　　　category_id: 1, lat: , lng: , description: "", type_id: 1)
Place.create(name: "とろあーすーる",   　　　　　category_id: 1, lat: , lng: , description: "", type_id: 1)
Place.create(name: "新世界",	     　　　　　　　　category_id: 2, lat: ,  lng: ,  description: "", type_id: 1)
Place.create(name: "五代目カネシメ蕎麦処柿崎",	　category_id: 3, lat: , lng: , description: "", type_id: 1)
Place.create(name: "旬香",			 　　　　　category_id: 4, lat: , lng: , description: "", type_id: 1)
Place.create(name: "カプリチョーザ",			 category_id: 5, lat: , lng: , description: "", type_id: 1)
Place.create(name: "グラナダ",			 　　　category_id: 6, lat: , lng: , description: "", type_id: 1)
Place.create(name: "TONY ROMA’S",			 category_id: 7, lat: , lng: , description: "", type_id: 1)
Place.create(name: "マルコポーロ",			 category_id: 8, lat: , lng: , description: "", type_id: 1)

Location.create(latitude: 40.645352, longitude: 140.596718, 			  accuracy: 50,timestamp: "2013-09-26 18:00:01", member_id: 5)
Location.create(latitude: 40.646518, longitude: 140.595709, altitude: 60, accuracy: 10,heading: 240.478952 ,timestamp: "2013-08-20 23:59:59", member_id: 3)
Location.create(latitude: 40.645077, longitude: 140.594733,  accuracy: 40,  altitude_accuracy: 30, speed: 40, timestamp: "2010-03-01 12:00:00", member_id: 1)
Location.create(latitude: 40.646506, longitude: 140.597775,  accuracy: 90, timestamp: "2011-11-11 11:11:11", member_id: 4)
Location.create(latitude: 40.646095, longitude: 140.596187, altitude: 40, accuracy: 100, altitude_accuracy: 70, heading: 300.12	, speed: 70, timestamp: "2012-12-24 12:12:24", member_id: 2)

MyMap.create(member_id:1)
MyMap.create(member_id:5)

Checkin.create(member_id: 2, place_id:3)
Checkin.create(member_id: 5, place_id:1)

WayPoint.create(place_id: 2, my_map_id:1)
WayPoint.create(place_id: 3, my_map_id:1)

1.upto(9) do |idx|
  PlaceImage.create(
    {
      place_id: idx,
      data: File.open(Rails.root.join("db/place_images/#{idx}.jpg"), "rb").read,
      content_type: "image/jpeg"
    }
  )
end
