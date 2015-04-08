class Exam < ActiveRecord::Base
	belongs_to :question
	serialize :answers
	def next
    	offset = rand(Question.count)
    	Question.where.not(id: question_ids).offset(offset).first(3)
  	end

  	def answers=(input)
    	super(Array(input).map(&:to_i))
  	end

  	
end
