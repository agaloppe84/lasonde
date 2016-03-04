class ItemAnswersController < ApplicationController

  def create
    @iteration = Iteration.find(params[:iteration_id])
    @item_id = item_answer_params[:item_id]
    if check_items
      if @item_id.kind_of?(Array)
        @item_id.each  {|item_id| create_item_answer(item_id) }
      else
        create_item_answer(@item_id)
      end
    end
    authorize @iteration.question
    respond_to do |format|
      format.html { redirect_to preview_path(@iteration.question.survey) }
      format.js
    end
  end

  private

  def check_items
    return true if params[:item_answer] && params[:item_answer][:item_id].size > 0
    @alert = "ça marche pas bien"
    return false
  end

  def item_answer_params
    params.require(:item_answer).permit(:respondent_id, :item_id, item_id: [])
  end

  def create_item_answer(item_id)
    @item_answer = ItemAnswer.new(item_id: item_id, respondent_id: item_answer_params[:respondent_id])
    authorize @item_answer
    if @item_answer.save
      @iteration.answers << @item_answer
    else
      @alert = "ça marche pas bien"
    end
  end
end

