class User < ApplicationRecord
  acts_as_favoritor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  has_many :bookings
  geocoded_by :address # Needed for city on beach and location
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :user1_chatrooms, class_name: "Chatroom", foreign_key: "user1_id"
  has_many :user2_chatrooms, class_name: "Chatroom", foreign_key: "user2_id"

  def chatrooms
    user1_chatrooms.or(user2_chatrooms)
  end

  has_many :rides
  has_many :reviews, through: :rides

  reverse_geocoded_by :latitude, :longitude do |obj, results|
    if geo = results.first
      obj.city = geo.city
    end
  end # Needed for city

  after_validation :reverse_geocode

  def full_name
    "#{first_name} #{last_name}"
  end
end
