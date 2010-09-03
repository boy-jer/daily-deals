class Deal < ActiveRecord::Base
  has_many :sales
  belongs_to :business
end
