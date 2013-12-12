class Member < ActiveRecord::Base
  has_many :locations
  has_many :checkins
  has_one :my_map

  has_secure_password # パスワードを暗号化する
end
