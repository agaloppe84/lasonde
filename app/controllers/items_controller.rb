class ItemsController < ApplicationController
  before_action :set_item, only:[ :show, :edit, :update, :destroy]
  before_action :find_question, only: [ :new, :create, :edit, :update, :destroy ]

  def new
    @item = @question.items.new
    authorize @item
  end

  def create
    @item = @question.items.build(item_params)
    @item.rank = @question.items.count + 1
    authorize @item
    if @item.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to question_path(@question)
  end

  private

  def item_params
    params.require(:item).permit(:label, :rank)
  end

  def set_item
    @item = Item.find(params[:id])
    authorize @item
  end

   def find_question
    @question = Question.find(params[:question_id])
  end
end
