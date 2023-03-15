class User < ApplicationRecord
  acts_as_favoritor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :user1_chatrooms, class_name: "Chatroom", foreign_key: "user1_id"
  has_many :user2_chatrooms, class_name: "Chatroom", foreign_key: "user2_id"

  def chatrooms
    user1_chatrooms.or(user2_chatrooms)
  end

  def full_name
   "#{first_name} #{last_name}"
  end
end
