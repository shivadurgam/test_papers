class ExamsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_question
  

  
  def new

  	@exam = Exam.new
  end

  def create

    @exam = Exam.new(exam_params)
    
     
    if @exam.save
          if @exam.answers == @question.correct_ans
            flash[:success] = "Correct Answer"
          else 
            flash[:error] = "Wrong Answer"
          end

      redirect_to new_exam_path
    
    else
      flash[:error] = "Choose atleast one option"
      redirect_to new_exam_path
    end
  end

  private
  def exam_params
      params.require(:exam).permit(:question_id, :opt1, :opt2, :opt3, :opt4, answers: [])
  end

  def set_question
      #@question = Question.order("RANDOM()").limit(10)
      @question = Question.offset(rand(Question.count)).first
  end
end
