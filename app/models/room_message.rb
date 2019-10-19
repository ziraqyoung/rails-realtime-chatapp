class RoomMessage < ApplicationRecord
  belongs_to :user
  belongs_to :room, inverse_of: :room_messages

  def as_json(options)
    super(options).merge(
      username: user.username, user_avatar_url: user.gravatar_url
    )
  end
end
