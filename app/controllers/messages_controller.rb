class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @message = Message.new(message_params)
    @lesson = Lesson.find(params[:lesson_id])
    @message.lesson = @lesson
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to lesson_live_path(@lesson) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "lessons/live" }
        format.js
      end
    end
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end

