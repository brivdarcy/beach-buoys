class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @buoys = Buoy.all
  end

  def profile
    @profile = current_user
    @buoys = Buoy.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @buoy_bookings = []
    Booking.all.each do |booking|
      if booking.buoy.user == current_user
        @buoy_bookings << booking
      end
    end
  end
end
