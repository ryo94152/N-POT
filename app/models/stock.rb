class Stock < ApplicationRecord
  belongs_to :category
  has_one :delivery
  validates  :lot,       presence: true
  validates  :box,       presence: true
  validates  :weight,    presence: true

  def lot_and_weight
    self.lot + " / " + self.weight.to_s + "Kg"
  end

end
