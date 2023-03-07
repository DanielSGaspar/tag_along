class RidesController < ApplicationController
  def new
    @ride = Ride.new
    @location = Location.find(params[:location_id])
    @beach = Beach.find(params[:beach_id])
  end

  def create
    @ride = Ride.new(ride_params)
    @location = Location.find(params[:location_id])
    @beach = Beach.find(params[:beach_id])
    @ride.beach = @beach
    @ride.user = current_user
    @ride.save
    redirect_to location_beach_path(@location, @beach)
  end

  private

  def ride_params
    params.require(:ride).permit(:seats, :price, :pick_up_location, :date_time)
  end
end
