class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  def index
    @surveys = policy_scope(current_user.surveys)
  end

  def show
    @questions = @survey.questions
    @item_answer = ItemAnswer.new
    calculate_price(@survey)
  end

  def new
    @survey = current_user.surveys.new
    authorize @survey
  end

  def create
    @survey = current_user.surveys.new(survey_params)
    authorize @survey
    if @survey.save
      redirect_to survey_path(@survey)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @survey.update(survey_params)
      calculate_price(@survey)
    else
      @alert = "ça marche pas bien"
    end
    respond_to do |format|
      format.html { survey_path(@survey) }
      format.js
    end
  end

  def destroy
    @survey.destroy
    redirect_to surveys_path
  end

  private

  def set_survey
    @survey = Survey.find(params[:id])
    authorize @survey
  end

  def survey_params
    params.require(:survey).permit(:title, :target, :country, :sample_size)
  end

  def calculate_price(survey)
    @price = (survey.sample_size * survey.questions.count)
  end
end
