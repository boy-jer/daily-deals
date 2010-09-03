class Sale < ActiveRecord::Base
  belongs_to :users, :deals
  has_many :coupons
end
