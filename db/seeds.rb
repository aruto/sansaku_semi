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
Type.create(name: "温泉",       icon: "spa.png")
Type.create(name: "旅館",       icon: "hotel.png")
Type.create(name: "お菓子",   icon: "sweets.png")

Initial.create(lat: 40.645427, lng: 140.59678, zoom: 16)

Place.create(name: "喫茶　しもん",             category_id: 1, lat: 40.645352, lng: 140.596718, description: "ナポリタン気さくなマスターが、昭和52年から作り続けているメニューのひとつでもある。ナポリタンは、まさに昔ながらのケチャップが効いた懐かしい味。ボリューム満点で味も満足！", type_id: 1)
Place.create(name: "とろあーすーる",           category_id: 1, lat: 40.645352, lng: 140.596718, description: "喫茶店のエスプレッソコーヒーを使用したエスプレッソコーヒーゼリー。クリームはふわふわ。ガムシロップをお好みの分量で入れられるため、苦め、甘め、どちらも味わうことが出来ます。", type_id: 1)
Place.create(name: "新世界",                   category_id: 2, lat: 40.645352, lng: 140.596718, description: "おいしいお肉とホルモン、お酒、活気があるお店なので、新世界に訪れたお客さんは、元気と力がつくことまちがいなし！塩ガツは焼いてからたれをつけないでレモンをしぼって食べる一品。ガツとは豚の胃の部分で、歯ごたえがとてもこりこりしている。ホルモンが苦手の人でも満足できる！", type_id: 1)
Place.create(name: "五代目カネシメ蕎麦処柿崎", category_id: 3, lat: 40.645352, lng: 140.596718, description: "青森県産の蕎麦粉と鴨を使用。冷たい蕎麦を温かいつけ汁でいただく逸品。つけ汁は具沢山。臭みのない鴨が非常に美味しい。食後に蕎麦湯としていただくのもまたオツ！地産地消を推進し、青森県産の食材を使用。蕎麦はもちろんのこと、青森名物生姜味噌おでんや、柳町の逸品冷やし五目蕎麦などもございます。蕎麦屋でお酒を愉しみ、シメに蕎麦。いかがですか。", type_id: 1)
Place.create(name: "旬香",                     category_id: 4, lat: 40.645352, lng: 140.596718, description: "旬香御膳。その日仕入れた食材を使用しているため、素材の味を生かした新鮮で美味しい魚介類をいただける。時期によりメニューが変更されるので、来店前にお問い合わせください。あんみつは程々の甘さで食後サッパリ。ほうじ茶アイスは絶品。とにかく新鮮！落ち着いた空間と旬香る料理でランチと宴会を楽しめる。", type_id: 1)
Place.create(name: "カプリチョーザ",           category_id: 5, lat: 40.645352, lng: 140.596718, description: "カプリチョーザのトマトとニンニクのスパゲティは、常連も初めての人も必ず頼む人気の逸品。細麺に絡まるトマトソースは、酸味とガーリックのスパイシーさが広まり、絶品。１人でも来れる居心地の良さとボリュームたっぷりで友達同士で来るもOK！夜限定メニューでお酒やおつまみもあるので、ぜひカプリチョーザへ！", type_id: 1)
Place.create(name: "グラナダ",                 category_id: 6, lat: 40.645352, lng: 140.596718, description: "パエリヤこの料理は多くの人が必ず注文する一品。客数に合わせて量を変えられるのでパーティーにもお勧め。見た目は彩り豊かで、魚介や鶏肉などがふんだんに使われているため、ボリュームも満点！！！本場スペインの伝統的な料理や雰囲気が堪能できるお店。お店を気に入ってリピートするお客さんも多い。青森県産の食材を使っているので安心。", type_id: 1)
Place.create(name: "TONY ROMA’S",             category_id: 7, lat: 40.645352, lng: 140.596718, description: "TONY　ROMA’S自慢のオリジナルベイビーバックリブ。子豚の背中のお肉を使い、オリジナルBBQソースで焼き、外はパリッと中はジューシー。みんなで楽しんで食べれる！ほかにも本場風のローマバーガーや日替わりのお得なバリューランチもおすすめ☆誕生日や記念日などを言ってもらえればサプライズもしてくれる！", type_id: 1)
Place.create(name: "マルコポーロ",             category_id: 8, lat: 40.645352, lng: 140.596718, description: "本場スイスのカーリングチームのコーチ、監督が絶賛の厳選されたチーズを使用しており、少し塩気を感じることができる。パン、エビ、ブロッコリー、トマトをチーズと絡めて食べると濃厚なチーズと絡めて食べると濃厚なチーズな中にも食材の味を感じられる逸品である。チーズフォンデュは子供向けと大人向けに作ることが可能で、メニューすべてお客様の希望に応えてくれる。お酒の種類も多く、飲み会にもオススメ。従業員全員気さくで、とてもいい雰囲気のお店。", type_id: 1)

Location.create(latitude: 40.645352, longitude: 140.596718, accuracy: 50, timestamp: "2013-09-26 18:00:01", member_id: 5)
Location.create(latitude: 40.646518, longitude: 140.595709, altitude: 60, accuracy: 10,heading: 240.478952 ,timestamp: "2013-08-20 23:59:59", member_id: 3)
Location.create(latitude: 40.645077, longitude: 140.594733, accuracy: 40, altitude_accuracy: 30, speed: 40, timestamp: "2010-03-01 12:00:00", member_id: 1)
Location.create(latitude: 40.646506, longitude: 140.597775, accuracy: 90, timestamp: "2011-11-11 11:11:11", member_id: 4)
Location.create(latitude: 40.646095, longitude: 140.596187, altitude: 40, accuracy: 100, altitude_accuracy: 70, heading: 300.12 , speed: 70, timestamp: "2012-12-24 12:12:24", member_id: 2)

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
