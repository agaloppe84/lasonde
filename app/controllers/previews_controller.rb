class PreviewsController < ApplicationController
  def show
  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
    authorize @survey
  end
end
