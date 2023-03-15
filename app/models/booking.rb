class Booking < ApplicationRecord
  belongs_to :ride
  belongs_to :user
  has_many :reviews, dependent: :destroy
  monetize :amount_cents

  validates_presence_of :seats, message: ': How many seats do you want to book my friend?'
end
