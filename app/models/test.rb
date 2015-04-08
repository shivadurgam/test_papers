class Test < ActiveRecord::Base
  belongs_to :user
  has_many :exams
  has_many :questions, through: :exams
end
