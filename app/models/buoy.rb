class Buoy < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, dependent: :destroy
  validates :name, :price, :address, :person_number, presence: true
  has_one_attached :photo
  validates :price, :person_number, numericality: { only_integer: true }
end
