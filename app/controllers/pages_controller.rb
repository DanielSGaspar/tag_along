class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user

    if params[:date].present?
      @rides = Ride.on_date(params[:date])
    else
      @rides = Ride.today
    end

    # Popular Beaches
    @popular = []
    @rides.each do |ride|
      @popular << ride.beach
    end
    @popular = @popular.uniq
    @popular = @popular.sort_by { |beach| beach.rides.size }.reverse!.first(5)

    # Locations
    @locations = []
    @rides.each do |ride|
      @locations << ride.beach.location
    end
    @locations = @locations.uniq
    @locations = @locations.sort_by { |beach| beach.rides.size }.reverse!.first(5)



    carcavelos = Beach.find_by(name: "Carcavelos")
    sao_juliao = Beach.find_by(name: "São Julião")
    praia_grande = Beach.find_by(name: "Praia Grande")
    foz_do_lizandro = Beach.find_by(name: "Foz do Lizandro")
    guincho = Beach.find_by(name: "Guincho")
    adraga = Beach.find_by(name: "Adraga")

    @favorites = [guincho, praia_grande, adraga]
    @bookings = Booking.all
  end
end
