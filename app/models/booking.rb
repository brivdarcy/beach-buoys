class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :buoy
  validates :start_date, presence: true
  validates :end_date, presence: true

  def total_price
    duration * buoy.price
  end

  def duration
    (end_date - start_date).to_i
  end
end
