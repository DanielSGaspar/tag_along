class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user

    @date = params[:date] || Date.today.strftime("%Y-%m-%d")

    @rides = Ride.on_date(@date).near(current_user.address, 3)

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

    # Favorites
    @favorites = @user.all_favorites.map(&:beach)
    @bookings = current_user.bookings.order(created_at: :DESC)
    @user_rides = current_user.rides
  end
end
