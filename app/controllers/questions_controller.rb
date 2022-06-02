class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]
  load_and_authorize_resource
  before_action :authenticate_user!

  def index
    @questions = Question.all
  end

  def show
    quiz = Quiz.find(params[:quiz_id])
    @question = quiz.questions.find(params[:id])
  end

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.new
  end

  def create
    @question = Question.new(question_params)
    quiz = Quiz.find(params[:quiz_id])
    @question.quiz_id = quiz.id
    respond_to do |format|
      if @question.save
        format.html { redirect_to quiz_path(@question.quiz.id), notice: "Question was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    quiz = Quiz.find(params[:quiz_id])
    respond_to do |format|
      if question.update(question_params)
        format.html { redirect_to quiz_url(quiz.id), notice: "Question was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question.destroy

    respond_to do |format|
      format.html { redirect_to quiz_url(@question.quiz.id), notice: "Question was successfully destroyed." }
    end
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:title)
    end
end
