class PreviewsController < ApplicationController
  before_action :set_survey, only: [:show]

  def show
    @questions = @survey.questions
    @item_answer = ItemAnswer.new
  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
    authorize @survey
  end
end
