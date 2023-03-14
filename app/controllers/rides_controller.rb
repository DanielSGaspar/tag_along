class RidesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @search = params[:search]

    if @search.nil?
      @rides = Ride.all
    else
      @rides = RideSearch.new(params).search(Ride.all)
    end
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

  def edit
    @ride = Ride.find(params[:id])
  end

  def update
    @ride = Ride.find(params[:id])
    @ride.update(ride_params)

    redirect_to ride_path(@ride)
  end

  private

  def ride_params
    params.require(:ride).permit(:beach_id, :seats, :price, :address, :date_time)
  end
end
