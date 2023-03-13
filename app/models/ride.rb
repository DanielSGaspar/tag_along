class Ride < ApplicationRecord
  include PgSearch::Model
  # pg_search_scope :search_landing_page, against: [:address, :beach_location, :date_time, :seats]

  belongs_to :user
  belongs_to :beach
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  delegate :location, to: :beach

  validates :date_time, :price, :address, :seats, presence: true

  ## delegate is equal to the code below
  # def location
  #   beach.location
  # end
end
