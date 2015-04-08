class Question < ActiveRecord::Base
	serialize :correct_ans
	validates_presence_of :q1, :ans1, :ans2, :ans3, :ans4, :correct_ans, :message => ": cant be blank"

	  def correct_ans=(input)
    	super(Array(input).map(&:to_i))
  	end

  	def random
      offset(rand(count))
    end

end
