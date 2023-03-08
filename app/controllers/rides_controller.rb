class RidesController < ApplicationController

  def index
    # @rides = Ride.where(location: params[:search][:location])
    # @rides = Ride.where(location: params[:search][:pick_up_location])
    @rides = Ride.all
  end

  def beach
    @beach = Beach.find(params[:id])
    @rides = Ride.where(beach: @beach)
  end

  def location
    @location = Location.find(params[:id])
    beaches = Beach.where(location: @location)
    @rides = []

    beaches.each do |beach|
      @rides += beach.rides if beach.rides
    end
  end

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
