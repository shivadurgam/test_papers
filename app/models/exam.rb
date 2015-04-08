class Exam < ActiveRecord::Base
	belongs_to :question
  belongs_to :test
	serialize :answers

  validates_presence_of :answers
	  


  	def answers=(input)
    	super(Array(input).map(&:to_i))
  	end

    def random
      offset(rand(count))
    end

  	
end
