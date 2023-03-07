class Location < ApplicationRecord
  has_many :beaches, dependent: :destroy
end
