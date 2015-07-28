class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @questions = Question.paginate(page: params[:page], per_page: 20)
    #respond_with(@questions)
  end

  def show
    respond_with(@question)
  end

  def new
    @question = question.new
    respond_with(@question)
  end

  def edit
  end

  def create
    @question = question.new(question_params)
    @question.save
    respond_with(@question)
  end

  def update
    @question.update(question_params)
    respond_with(@question)
  end

  def destroy
    @question.destroy
    respond_with(@question)
  end

  private
  def set_question
    @question = question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :desc, :type)
  end
end
