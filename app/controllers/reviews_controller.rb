class ReviewsController < ApplicationController
  def new
    @buoy = Buoy.find(params[:buoy_id])
    @review = Review.new
  end

  def create
    @buoy = Buoy.find(params[:buoy_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.buoy = @buoy
    if @review.save
      redirect_to buoy_path(@buoy)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to buoy_path(@review.buoy)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
