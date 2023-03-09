class Ride < ApplicationRecord
  belongs_to :user
  belongs_to :beach
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :date_time, :price, :address, :seats, presence: true
end
