class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @lessons = Lesson.where.not(teacher: current_user).where("date >= ?", Date.today)
    @upcoming_lessons = @lessons.sort_by {|lesson| lesson.date}.first(3)
    @popular_lessons = @lessons.sort_by do |lesson|
      lesson.participations.count
    end
    @ordered_popular_lessons = @popular_lessons.reverse.first(3)
  end
end
