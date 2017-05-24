class ExercisesController < ApplicationController
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
