class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user

    @date = params[:date] || Date.today.strftime("%Y-%m-%d")

    @rides = Ride.on_date(@date)

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
    @popular = [carcavelos, sao_juliao, praia_grande, foz_do_lizandro]
    @favorites = @user.all_favorites.map(&:beach)
    @locations = Location.all
    @bookings = Booking.all
  end

end
