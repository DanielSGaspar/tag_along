class Beach < ApplicationRecord
  belongs_to :location
  has_many :rides
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
