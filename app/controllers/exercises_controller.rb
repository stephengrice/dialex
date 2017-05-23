class ExercisesController < ApplicationController
  def grade
    @exercise = Exercise.find(params[:id])
    @input = params[:input]
    if @input.nil?
      render json: {correct: false}
    else
      # Return true if the answer matches. mb_chars.downcase.to_s allows for cyrillic case insensitivity
      @result = {correct: @exercise.translation.mb_chars.downcase.to_s == @input.mb_chars.downcase.to_s}
      #@result = {correct: @exercise.translation.downcase == @input.downcase}
      render json: @result.to_json
    end
  end
end
