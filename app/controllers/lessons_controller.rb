class LessonsController < ApplicationController
  def index
  end

  def show
    @lesson = Lesson.find(params[:id])

  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def live
  end

  def replay
  end
end
