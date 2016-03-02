class ItemAnswersController < ApplicationController

  def create

    @iteration = Iteration.find(params[:iteration_id])
    item_answer_params[:item_id].each do |item_id|
      @item_answer = ItemAnswer.new(item_id: item_id, respondent_id: item_answer_params[:respondent_id])
      authorize @item_answer
      if @item_answer.save
        @iteration.answers << @item_answer
        respond_to do |format|
          format.html { redirect_to preview_path(@iteration.question.survey) }
          format.js
        end
      end
    end
  end

  private

  def item_answer_params
    params.require(:item_answer).permit(:respondent_id, item_id: [])
  end
end

