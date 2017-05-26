class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @language = Language.find(@lesson.language_id)
    @exercises = Exercise.where(lesson: @lesson)
  end
end
