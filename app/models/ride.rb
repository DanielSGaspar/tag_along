class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :beach
  has_many :bookings

  validates :date_time, :price, :pick_up_location, :seats, presence: true
end
