class QuestionsController < ApplicationController
  before_action :set_question, only:[ :show, :edit, :update, :destroy]
  before_action :find_survey, only: [ :new, :create, :edit, :update, :destroy ]

  def new
    @question = @survey.questions.new
    @question_type = params[:question_type]
    authorize @question
  end

  def create
    @question = @survey.questions.build(question_params)
    @question.rank = @survey.questions.count + 1
    authorize @question
    if @question.save
      @question.iterations.create(number: 1)
      redirect_to survey_path(@survey)
    else
      @question_type = @question.kind
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to survey_path(@survey)
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to survey_path(@survey)
  end

  private

  def question_params
    params.require(:question).permit(:label, :rank, :kind)
  end

  def set_question
    @question = Question.find(params[:id])
    authorize @question
  end

   def find_survey
    @survey = Survey.find(params[:survey_id])
  end
end
