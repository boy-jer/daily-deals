class Sale < ActiveRecord::Base
  belongs_to :users
  belongs_to :deals
  has_many :coupons
end
