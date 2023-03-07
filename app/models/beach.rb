class Beach < ApplicationRecord
  belongs_to :location
  has_many :rides
end
