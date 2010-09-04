class Deal < ActiveRecord::Base
  has_many :sales
  belongs_to :business
  
  def off
    (((self.value-self.price)/self.value)*100).floor
  end
  
  def activated
    true if self.activated_at
  end
  
  def savings
    self.value - self.price
  end
  
  def sold
    5
    #TODO: Implement
  end
  
  def remaining
    5
    #TODO: Implement
  end
  
  
end
