class PaymentMethod < ActiveRecord::Base
  has_one :user
end
