class LessonsChannel < ApplicationCable::Channel
  def subscribed

    chatroom = "lesson_#{params[:lesson_id]}"
    stream_from chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
