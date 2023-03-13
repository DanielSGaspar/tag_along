class RidesController < ApplicationController

  def index
    # activate when location and map is active
    # @rides = Ride.where(location: params[:search][:location])
    # @rides = Ride.where(location: params[:search][:pick_up_location])
    @rides = Ride.all

  end

  def beach
    @date = params[:date]
    @beach = Beach.find(params[:id])
    @rides = Ride.where(beach: @beach).on_date(@date)
  end

  def location
    @date = params[:date]
    @location = Location.find(params[:id])
    @rides = @location.rides.on_date(@date)
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

  def show
    @beaches = Beach.all

    @ride = Ride.find(params[:id])
    @markers = [{
      lat: @ride.latitude,
      lng: @ride.longitude
    },
    {
      lat: @ride.beach.latitude,
      lng: @ride.beach.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {beach: @ride.beach})
    }]
  end

  private

  def ride_params
    params.require(:ride).permit(:beach_id, :seats, :price, :address, :date_time)
  end
end
