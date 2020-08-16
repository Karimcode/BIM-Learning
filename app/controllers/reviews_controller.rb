class ReviewsController < ApplicationController
  def index
  end

  end

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @review = Review.new(review_params)
    @review.user = @lesson.teacher
    if @review.save
      redirect_to participations_path(@lesson)
    else
      render 'lessons/live'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
