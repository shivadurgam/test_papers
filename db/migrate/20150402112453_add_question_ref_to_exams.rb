class AddQuestionRefToExams < ActiveRecord::Migration
  def change
    add_reference :exams, :question, index: true
    add_foreign_key :exams, :questions
  end
end
