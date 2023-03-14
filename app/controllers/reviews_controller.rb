class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new()
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking

    if @review.save
      redirect_to dashboard_path, notice: "Review was successfully submitted."
    else
      render :show
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
