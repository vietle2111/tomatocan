class AttendeesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'attendees'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    ActionCable.server.broadcast('attendees', data)
  end
end
