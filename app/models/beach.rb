class Beach < ApplicationRecord
  belongs_to :location
  has_many :rides
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  acts_as_favoritable

  reverse_geocoded_by :latitude, :longitude do |obj, results|
    if geo = results.first
      obj.city = geo.city
    end
  end

  after_validation :reverse_geocode
end
