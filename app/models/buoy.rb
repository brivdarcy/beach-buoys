class Buoy < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, :price, presence: true
  validates :price, format: {:integer}
  has_one_attached :photo
end
