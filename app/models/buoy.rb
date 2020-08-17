class Buoy < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :price, presence: true
  validates :price, numericality: { only_integer: true }
end
