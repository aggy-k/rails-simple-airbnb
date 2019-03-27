class Flat < ApplicationRecord
  validates :name, :address, :image, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, numericality: true
  validates :number_of_guests, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4] }
end
