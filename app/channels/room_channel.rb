class RoomChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find_by id: params[:room]
    stream_for room
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
