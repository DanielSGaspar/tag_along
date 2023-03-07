class Ride < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :date_time, :price, :pick_up_location, :seats, presence: true
end
