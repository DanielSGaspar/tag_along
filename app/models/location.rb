class Location < ApplicationRecord

  NAMES = ["Minho & Douro", "Beira Litoral", "Peniche", "Ericeira", "Sintra", "Lisbon", "Costa da Caparica", "Alentejo & North Algarve", "South Algarve"]
  has_many :beaches, dependent: :destroy
  has_many :rides, through: :beaches
  has_one_attached :photo
end
