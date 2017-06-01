class ExercisesController < ApplicationController
  
  # Pass in lesson id to get the associated exercises
  def index
    @lesson_id = params[:id]
    @exercises = Exercise.where(lesson_id: @lesson_id)
    render json: @exercises.to_json
  end
  
  def grade
    @exercise = Exercise.find(params[:id])
    @translation = params[:translation]
    if @translation.nil?
      render json: {correct: false}
    else
      @result = {correct: @exercise.translation.mb_chars.downcase.to_s == @translation.mb_chars.downcase.to_s}
      render json: @result.to_json
    end
  end

end
