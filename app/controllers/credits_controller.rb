class CreditsController < ApplicationController
  # input: :lesson_id, :points
  def create
    if !current_user || params[:points].nil?
      head 422 # must be logged in
      return
    end
    
    @credit = Credit.new(user: current_user, lesson_id: params[:lesson_id], points: params[:points])
    
    if @credit.save
      # Update user points
      current_user.points += params[:points].to_i
      current_user.save!
      head :ok
    else
      head 500
    end
  end
end
