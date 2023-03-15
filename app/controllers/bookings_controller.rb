class BookingsController < ApplicationController
  def new
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.new
  end

  def create
    @ride = Ride.find(params[:ride_id])
    @booking = Booking.new(booking_params)
    @booking.state = 'pending'

    if @booking.seats
      @booking.amount = @ride.price * @booking.seats
    end
    @booking.ride = @ride
    @booking.user = current_user

    if @booking.save
      # Stripe
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          quantity: 1,
          price_data: {
            currency: "eur",
            unit_amount: @ride.price_cents,
            product_data: {
              name: "Ride to #{@ride.beach.name}",
              images: ["https://images.unsplash.com/photo-1520116468816-95b69f847357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"],
            }
          }
        }],
        mode: "payment",
        success_url: booking_url(@booking),
        cancel_url: booking_url(@booking)
      )
      @booking.update(checkout_session_id: session.id)
      redirect_to new_booking_payment_path(@booking)
    else
      render :show, status: :unprocessable_entity # Need to ask the TAs how to fix this
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
