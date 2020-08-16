class Message < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  after_create :broadcast_message
  validates :content, presence: true, allow_blank: false

  def broadcast_message
    ActionCable.server.broadcast("lesson_#{lesson.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false, user_is_teacher: user_is_teacher? }
      ),
      current_user_id: user.id
    })
  end

  def from?(some_user)
    user == some_user
  end

  def user_is_teacher?
    user == lesson.teacher
  end
end
