class Business < ActiveRecord::Base
  has_many :deals
  has_many :locations
end
