class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_channel"
  end
  # This sets the chatroom_channel to be where to stream from.
  # Once the stream is established, from the server it's sending a stream,
  # the client is now subscribed to new items that come in,
  # ie. when the server sends a message, the client receives it.

  def unsubscribed
  end
  # This is where to add any cleanup needed when channel is unsubscribed.

end
