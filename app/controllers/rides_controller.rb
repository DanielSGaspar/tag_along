class RidesController < ApplicationController
  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    if @ride.save
      redirect_to dashboard_path #this will be redirected to the user dashboard
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def ride_params
    params.require(:ride).permit(:beach_id, :seats, :price, :pick_up_location, :date_time)
  end
end
