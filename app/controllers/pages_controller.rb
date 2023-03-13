class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @beaches = Beach.all
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
