class BuoysController < ApplicationController
  def new
    @buoy = Buoy.new
  end

  def create
    @buoy = Buoy.new(buoy_params)
  end

  def edit
    @buoy = Buoy.find(params[:id])
  end

  def update
    @buoy = Buoy.find(params[:id])
    @buoy.update(buoy_params)
  end

  private

  def buoy_params
    params.require(:buoy).permit(:name, :description, :price, :photo)
  end
end
