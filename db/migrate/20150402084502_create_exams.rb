class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.text :answers
      t.string :opt1
      t.string :opt2
      t.string :opt3
      t.string :opt4

      t.timestamps null: false
    end
  end
end
