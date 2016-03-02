class PreviewsController < ApplicationController
  before_action :set_survey, only: [:show]

  def show
    @questions = @survey.questions

  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
    authorize @survey
  end
end
