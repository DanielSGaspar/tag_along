class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = current_user.chatrooms
  end

  def create
    ride_user = Ride.find(params[:ride_id]).user

    chatroom = find_chatroom_with(ride_user).first
    chatroom ||= Chatroom.create(user1: current_user, user2: ride_user)

    redirect_to chatroom_path(chatroom)
  end

  private

  def find_chatroom_with(user)
    Chatroom.where(user1: user, user2: current_user)
            .or(Chatroom.where(user1: current_user, user2: user))
  end
end
