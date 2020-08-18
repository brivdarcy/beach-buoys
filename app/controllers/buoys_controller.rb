class BuoysController < ApplicationController
  before_action :set_buoy, only: [:show, :edit, :update]

  def index
    @buoys = Buoy.all
  end

  def show
    @booking = Booking.new
    @bookings = Booking.where(buoy_id: @buoy.id)
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.stat_date,
        to: booking.end_date
      }
    end
  end

  def new
    @buoy = Buoy.new
  end

  def create
  @buoy = Buoy.new(buoy_params)
  @buoy.user = current_user
    if @buoy.save
    redirect_to buoy_path(@buoy)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @buoy.user = current_user
    if @buoy.update(buoy_params)
    redirect_to buoys_path
    else
      render :edit
    end
  end

  private

  def set_buoy
    @buoy = Buoy.find(params[:id])
  end

  def buoy_params
    params.require(:buoy).permit(:name, :description, :price, :photo, :address, :person_number)
  end
end
