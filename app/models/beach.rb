class Beach < ApplicationRecord
  belongs_to :location
  has_many :rides
  has_one_attached :photo
end
