class Question < ActiveRecord::Base
	has_many :exams
	serialize :correct_ans
	validates_presence_of :q1, :ans1, :ans2, :ans3, :ans4, :correct_ans, :message => ": cant be blank"

	def correct_ans=(input)
    	super(Array(input).map(&:to_i))
  	end

  	def next
    	offset = rand(Question.count)
    	Question.where.not(id: question_ids).offset(offset).first(3)
  	end

end
