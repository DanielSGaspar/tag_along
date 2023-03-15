class Ride < ApplicationRecord

  belongs_to :user
  belongs_to :beach
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  delegate :location, to: :beach

  validates :date_time, :price_cents, :address, :seats, presence: true

  monetize :price_cents
  ## delegate is equal to the code below
  # def location
  #   beach.location
  # end

  scope :today, -> { where(date_time: Date.current.all_day) } # Ride.today
  scope :on_date, ->(date) { where(date_time: Date.parse(date).all_day) }

end
