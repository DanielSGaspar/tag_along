class BookingsController < ApplicationController
  def new
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.new
  end

  def create
    raise
  end

  def show
  end

  def update
  end
end
