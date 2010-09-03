class Location < ActiveRecord::Base
  has_many :coupons
  has_one :business
end
