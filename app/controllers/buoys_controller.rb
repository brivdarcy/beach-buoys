class BuoysController < ApplicationController
  before_action :set_buoy, only: [:show, :edit, :update ]

  def index
    @buoys = Buoy.all
  end

  def show
  end

  def new
    @buoy = Buoy.new
  end

  def create
<<<<<<< HEAD
      @buoy = Buoy.new(buoy_params)
      if @buoy.save
      redirect_to buoy_path(@buoy)

      else
        render :new
      end
=======
  @buoy = Buoy.new(buoy_params)
  @buoy.user = current_user
    if @buoy.save
    redirect_to buoy_path(@buoy)
    else
      render :new
    end
>>>>>>> c26b48b71216ca0be0f45f15c258028c1e625983
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
