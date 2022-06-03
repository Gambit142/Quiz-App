class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show edit update destroy ]
  load_and_authorize_resource
  before_action :authenticate_user!

  # GET /answers or /answers.json
  def index
    @answers = Answer.all
  end

  # GET /answers/1 or /answers/1.json
  def show
  end

  # GET /answers/new
  # def new
  #   @answer = Answer.new
  # end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers or /answers.json 
  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @quiz = Quiz.find(params[:quiz_id])

    @answer.quiz_id = @quiz.id
    @answer.question_id = @question.id
    @answer.user_id = current_user.id

    respond_to do |format|
      if @answer.save
        format.html { redirect_to quiz_url(@quiz), notice: "Answer was successfully created." }
      else
        format.html { redirect_to quiz_question_url(@quiz, @question), status: :unprocessable_entity, notice: "Could not submit answer" }
      end
    end
  end

  # PATCH/PUT /answers/1 or /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to answer_url(@answer), notice: "Answer was successfully updated." }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1 or /answers/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_params
      params.require(:answer).permit(:response)
    end
end
