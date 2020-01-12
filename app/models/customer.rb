class Customer < ApplicationRecord
  has_many :deliveries
  validates :han_code, presence: true
  validates :han_name, presence: true

  def ten_and_han_name
    self.han_name + " " + self.ten_name.to_s 
  end

end
