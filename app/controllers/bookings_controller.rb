class BookingsController < ApplicationController

  def new
    @buoy = Buoy.find(params[:buoy_id])
    @booking = Booking.new
  end

  def create
  @booking = Booking.new
  @buoy = Buoy.find(params[:buoy_id])
  @booking.buoy = @buoy
  @user = current_user
    if @booking.save
      redirect_to buoy_booking(@buoy)
    else
      redirect_to buoy_path(@buoy)
    end
  end

  def show
    @bookings = Booking.where(user: current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to buoy_path(@buoy)
  end
end
