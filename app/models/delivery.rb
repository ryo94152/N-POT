class Delivery < ApplicationRecord
  belongs_to :stock
  belongs_to :customer
  validates :han_year,   presence: true
  validates :han_month,  presence: true
  validates :han_day,    presence: true
  validates :price,      presence: true

  def lot_and_weight
    self.lot + '(' + self.weight.to_s + ')'
  end

end
