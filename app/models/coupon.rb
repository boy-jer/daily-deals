class Coupon < ActiveRecord::Base
  has_one :location
  has_one :sale
end
