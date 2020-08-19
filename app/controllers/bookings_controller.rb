class BookingsController < ApplicationController

  def show
    @bookings = Booking.where(user: current_user)
  end

  def new
    @buoy = Buoy.find(params[:buoy_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @buoy = Buoy.find(params[:buoy_id])
    @booking.buoy = @buoy
    @booking.user = current_user
    if @booking.save!
      redirect_to profile_path
    else
      redirect_to buoy_path(@buoy)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to buoy_path(@buoy)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
