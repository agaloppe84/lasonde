class TextAnswersController < ApplicationController
  def create
    @iteration = Iteration.find(params[:iteration_id])
    @text_answer = TextAnswer.new(content: text_answer_params[:content], respondent_id: text_answer_params[:respondent_id])
    authorize @text_answer
    if @text_answer.save
      @iteration.answers << @text_answer
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

  def text_answer_params
    params.require(:text_answer).permit(:respondent_id, :content)
  end
end
