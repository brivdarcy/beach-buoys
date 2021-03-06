class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :encrypted_password, presence: true
  validates :email, uniqueness: true
  has_many :buoys
  has_many :bookings
  has_one_attached :photo
  has_many :reviews

  def booked_buoy?(buoy)
    bookings.any? { |booking| booking.buoy == buoy }
  end
end
