class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @exercises = Exercise.where(lesson: @lesson)
  end
end
