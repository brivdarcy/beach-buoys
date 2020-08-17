class BuoysController < ApplicationController
  def index
    @buoys = Buoy.all
  end
end
