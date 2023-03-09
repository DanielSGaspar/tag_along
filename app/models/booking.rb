class Booking < ApplicationRecord
  belongs_to :ride
  belongs_to :user

  validates :seats, presence: true
end
