class Category < ApplicationRecord
  has_many :stocks
  has_ancestry
  # validates :code,  presence: true
  validates :genre, presence: true
end
