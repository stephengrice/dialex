class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end
  
  def show
    @language = Language.find(params[:id])
    @lessons = Lesson.where(language_id: @language.id)
  end
end
