class LessonsController < ApplicationController
  def index
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def live
    @lesson = Lesson.find(params[:lesson_id])
  end

  def replay
    @lesson = Lesson.find(params[:lesson_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
