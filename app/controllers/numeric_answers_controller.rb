class NumericAnswersController < ApplicationController
  def create
    @iteration = Iteration.find(params[:iteration_id])
    @numeric_answer = NumericAnswer.new(content: numeric_answer_params[:content], respondent_id: numeric_answer_params[:respondent_id])
    authorize @numeric_answer
    if @numeric_answer.save
      @iteration.answers << @numeric_answer
    else
      @alert = "ça marche pas bien"
    end
    authorize @iteration.question
    respond_to do |format|
      format.html { redirect_to preview_path(@iteration.question.survey) }
      format.js
    end
  end

  private

  def numeric_answer_params
    params.require(:numeric_answer).permit(:respondent_id, :content)
  end
end
