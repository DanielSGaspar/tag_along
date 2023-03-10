class BookingsController < ApplicationController
  def new
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.new
  end

  def create
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.new(booking_params)
    if @booking.seats
      @booking.price = @ride.price * @booking.seats
    end
    @booking.ride = @ride
    @booking.user = current_user

    if @booking.save
      redirect_to confirmation_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def booking_confirmation
    @booking = Booking.find(params[:id])
  end

  def show
    @booking = Booking.find(params[:id])
    @ride = @booking.ride
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:seats)
  end
end
