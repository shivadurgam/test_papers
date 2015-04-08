class QuestionsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /papers
  # GET /papers.json
  def index
    @questions = Question.all
    @num = (@questions.count-1)
  end

  # GET /papers/1
  # GET /papers/1.json
  def show
  end

  # GET /papers/new
  def new
    @question = Question.new
    @prashna = Question.new
  end

  # GET /papers/1/edit
  def edit
  end

  # POST /papers
  # POST /papers.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, :flash => {:success => 'Question was successfully created.'} }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /papers/1
  # PATCH/PUT /papers/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, :flash => {:success => 'Question was successfully updated.' }}
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papers/1
  # DELETE /papers/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, :flash => {:success => 'Question was successfully destroyed.' }}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:exam_id, :q1, :ans1, :ans2, :ans3, :ans4, :ans_check, correct_ans: [])
    end
end
