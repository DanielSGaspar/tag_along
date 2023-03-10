class Booking < ApplicationRecord
  belongs_to :ride
  belongs_to :user
  has_many :reviews, dependent: :destroy
  
  validates :seats, presence: true
end
