class BuoysController < ApplicationController
  before_action :set_buoy, only: [:show, :edit, :update]

  def index
    @buoys = Buoy.all
  end

  def show
  end

  def new
    @buoy = Buoy.new
  end

  def create
  @buoy = Buoy.new(buoy_params)
    if @buoy.save
    redirect_to buoy_path(@buoy)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @buoy.update(buoy_params)
    redirect_to buoy_path(@buoy)
    else
      render :edit
    end
  end

  private

  def set_buoy
    @buoy = Buoy.find(params[:id])
  end

  def buoy_params
    params.require(:buoy).permit(:name, :description, :price, :photo)
  end
end
