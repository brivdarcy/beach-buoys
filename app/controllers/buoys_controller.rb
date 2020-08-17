class BuoysController < ApplicationController

  def show
    @buoy = Buoy.find(params[:id])
  end

end
